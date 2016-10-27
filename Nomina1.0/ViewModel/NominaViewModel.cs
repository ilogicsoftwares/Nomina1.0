using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;


namespace Nomina1._0.ViewModel
{
    class NominaViewModel:nominatype, INotifyPropertyChanged
    {

        nominaEntities bd = Datos.Micontexto;
     
        public NominaViewModel()
        {
            Nuevo();
          
         
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
        private nominatype _NominaActual;
        public nominatype NominaActual
        {
            get { return _NominaActual; }
            set { _NominaActual = value;
                ConceptosViewList = new ConceptosListViewModel(NominaActual);
                NotifyPropertyChanged("NominaActual");
                NotifyPropertyChanged("ConceptosViewList");
            }
            
        }



        public void Guardar()
        {
            try
            {

                bd.nominatype.Add(NominaActual);
               
                bd.SaveChanges();
                Datos.Guardado();
                Nuevo();
            }
            catch (Exception exc)
            {
                Datos.Msg("Error al guardar verifique y/o complete los datos", "Error Al Guardar", "E");
            }
        }

        public void Nuevo()
        {
            NominaActual = new nominatype();
            
            PrincipalViewModel.EstatusNuevo = true;
            NotifyPropertyChanged("NominaActual");
         
        }

        public void Editar()

        {
            var msg = MessageBox.Show("Desea Actualizar lo Conceptos en todos los Trabajadores de la nomina", "", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (msg == MessageBoxResult.Yes)
            {
                IEnumerable<trabajador> trabajads;
                 if (NominaActual.tipo == 1)
                {
                    trabajads = bd.trabajador.Where(x => x.nominatype.idnomina == NominaActual.idnomina);
                    foreach (var tra in trabajads)
                    {

                        tra.conceptos = NominaActual.conceptos;


                    }
                }
                else
                {
                    trabajads = bd.trabajador.Where(x => x.nominatype1.idnomina == NominaActual.idnomina);
                    foreach (var tra in trabajads)
                    {

                        tra.conceptosbonos = NominaActual.conceptos;


                    }
                }
               
            }
            bd.SaveChanges();
            Datos.Actualizado();

        }

          public void Buscar(string cedulax)
          {

              var bt = bd.nominatype.FirstOrDefault(x => x.scodigo == cedulax);
              if (bt != null)
              {
                  NominaActual = bt;
                  PrincipalViewModel.EstatusNuevo = false;
                
               
              }
              else
              {
                  NominaActual = new nominatype { scodigo= cedulax };
                  PrincipalViewModel.EstatusNuevo = true;
                NotifyPropertyChanged("NominaActual");

              }
          }
        public void Eliminar()
        {
            try
            {
                Datos.Micontexto.nominatype.Remove(NominaActual);
                Datos.Micontexto.SaveChanges();
                Datos.Msg("Item eliminado", "Eliminado", "I");
                Nuevo();
            }
            catch (Exception es)
            {
                Datos.Msg("No se puede eliminar el Item, Se han generado procesos con el mismo" , "Error", "E");
            }
        }
        public void Filtro(string id)
        {
            
            int esto = Int32.Parse(id);
            var bt = bd.nominatype.FirstOrDefault(x => x.idnomina == esto);
            bd.Entry(bt).Reload();

            NominaActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged();


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
