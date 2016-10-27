using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.Validation;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace Nomina1._0.ViewModel
{
    class TrabajadorViewModel:trabajador,INotifyPropertyChanged
    {

        public static List<departamentos> Ldepart { get { return Datos.Micontexto.departamentos.ToList();}}
        public static List<estatus> Lestatus { get { return Datos.Micontexto.estatus.ToList();}}
        public static List<cargo> Lcargo { get { return Datos.Micontexto.cargo.ToList(); }}
        public static List<nominatype> Lnomina { get { return Datos.Micontexto.nominatype.Where(x => x.tipo == 1).ToList(); } }
        public static List<nominatype> Bnomina { get { return Datos.Micontexto.nominatype.Where(x=>x.tipo==2).ToList(); } }
        public static List<nacionalidad> Lnac {get { return Datos.Micontexto.nacionalidad.ToList(); }}
        public static List<gradointruc> Lgrado { get { return Datos.Micontexto.gradointruc.ToList(); }}
        public static List<bancos> Lbanco { get { return Datos.Micontexto.bancos.ToList();}}
        public static List<tipocuenta> Ltipoc { get { return Datos.Micontexto.tipocuenta.ToList(); } }


        nominaEntities bd = Datos.Micontexto;
        
        public TrabajadorViewModel()
        {
            Nuevo();

        }

     
        private trabajador _TrabajadorActual;
        public trabajador TrabajadorActual
        {
            get { return _TrabajadorActual; }
            set { _TrabajadorActual = value;
                ConceptosViewList = new ConceptosListViewModel(TrabajadorActual);
                CamposViewList = new ListCamposModel(TrabajadorActual.idtrabajador);
                NotifyPropertyChanged();
            }
            
        }

        private ListCamposModel _CamposViewList;
        public ListCamposModel CamposViewList
        {
            get { return _CamposViewList;  }
            set { _CamposViewList = value;
                NotifyPropertyChanged();
            }
        }

        private ConceptosListViewModel _ConceptosViewList;
        public ConceptosListViewModel ConceptosViewList
        {
            get { return _ConceptosViewList; }
            set
            {
                _ConceptosViewList = value;
                NotifyPropertyChanged("ConceptosViewList");
            }
        }


        public void Guardar()
        {
            try
            {
             
                bd.trabajador.Add(TrabajadorActual);
                bd.SaveChanges();
                var Campos = bd.campos.ToList();
                foreach(var camp in Campos)
                {
                    var camptra = new campotra
                    {
                        nombrecampo=camp.nombre,
                        idtrabajador=TrabajadorActual.idtrabajador,
                        valor=(decimal)camp.valorinicial
                    };
                    bd.campotra.Add(camptra);
                }
                
                bd.SaveChanges();
                Datos.Guardado();
                Nuevo();
            }catch(Exception exc)
            {
                Datos.Msg("Error al guardar verifique y/o complete los datos", "Error Al Guardar", "E");
            }
        }

        public void Nuevo()
        {
            TrabajadorActual = new trabajador();

            TrabajadorActual.direccion = "";
            
                    
            NotifyPropertyChanged("TrabajadorActual");
            PrincipalViewModel.EstatusNuevo = true;
        }

       public  void Editar()

        {
            try
            {
                bd.SaveChanges();
            Datos.Actualizado();
            }catch(DbEntityValidationException e)
            {
              
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Datos.Msg("- Property: " + ve.PropertyName + ", Error: " + ve.ErrorMessage, "Error", "E");
                    }
                }
                throw;
            }
        }
        public void Eliminar()
        {
            try
            { 
            Datos.Micontexto.trabajador.Remove(TrabajadorActual);
             var camposD = Datos.Micontexto.campotra.Where(x => x.idtrabajador == TrabajadorActual.idtrabajador);
                foreach (campotra campo in camposD)
                {
                    Datos.Micontexto.campotra.Remove(campo);
                       
                }
            Datos.Micontexto.SaveChanges();
            Datos.Msg("Item eliminado", "Eliminado", "I");
                Nuevo();
                ConceptosViewList = null;
            }
            catch(Exception es)
            {
                Datos.Msg("No se puede eliminar el Item, Se han generado procesos con el mismo", "Error", "E");
            }
        }
        public void Buscar(string cedulax)
        {
           
            var bt = bd.trabajador.FirstOrDefault(x => x.cedula == cedulax);
            if (bt != null)
            {
                TrabajadorActual = bt;
                PrincipalViewModel.EstatusNuevo = false;
                NotifyPropertyChanged("TrabajadorActual");
            }
            else
            {
                TrabajadorActual = new trabajador {cedula=cedulax };
                PrincipalViewModel.EstatusNuevo = true;
                NotifyPropertyChanged("TrabajadorActual");
                
            }
        }

        public void Filtro(string id)
        {
           
            int esto = Int32.Parse(id);
            var bt = bd.trabajador.FirstOrDefault(x=>x.idtrabajador==esto);
            var camposcount = bd.campos.Count();
            bd.Entry(bt).Reload(); // cargar sin cambios

            TrabajadorActual = bt;
            if (CamposViewList.ListaCampos.Count < camposcount)
            {
                var Campos = bd.campos.ToList();
                foreach (var camp in Campos)
                {
                    var camptra = new campotra
                    {
                        nombrecampo = camp.nombre,
                        idtrabajador = TrabajadorActual.idtrabajador,
                        valor = (decimal)camp.valorinicial
                    };
                    bd.campotra.Add(camptra);
                    bd.SaveChanges();
                }
                CamposViewList = new ListCamposModel(TrabajadorActual.idtrabajador);
            }
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("TrabajadorActual");


        }
        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }


    }
}
