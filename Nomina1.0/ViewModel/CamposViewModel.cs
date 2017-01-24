using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.ViewModel
{
    class CamposViewModel:campos, INotifyPropertyChanged
    {

        nominaEntities bd = Datos.Micontexto;
        #region Builder
        public CamposViewModel()
        {
            Nuevo();
        }

        #endregion


        #region EntidadActual

        private campos _CampoActual;
        public campos CampoActual
        {
            get { return _CampoActual; }
            set
            {
                _CampoActual = value;
                NotifyPropertyChanged();
            }
        }

        #endregion

        #region Editores
        public void Guardar()
        {
            using (nominaEntities bd = new nominaEntities())
            {
                try
                {
                    bd.campos.Add(CampoActual);
                    bd.SaveChanges();
                    var Trabajadores = Datos.Micontexto.trabajador.ToList();
                    foreach (var tra in Trabajadores)
                    {
                        var nuevoCampoTra = new campotra
                        {
                            nombrecampo = CampoActual.nombre,
                            idtrabajador = tra.idtrabajador,
                            valor = (decimal)CampoActual.valorinicial

                        };
                        bd.campotra.Add(nuevoCampoTra);
                    }
                    bd.SaveChanges();
                    Datos.Guardado();
                    Nuevo();
                }
                catch (Exception ex)
                {
                    Datos.Msg("Error al guardar verifique y/o complete los datos", "Error Al Guardar", "E");
                }
            }
        }

        public void Nuevo()
        {
            CampoActual = new campos();

            PrincipalViewModel.EstatusNuevo = true;
        }

        public void Editar()

        {
            try
            {
                bd.SaveChanges();
                Datos.Actualizado();
            }
            catch (Exception)
            {
                Datos.Msg("Error al guardar verifique y/o complete los datos", "Error Al Guardar", "E");
            }

        }

        public void Buscar(string texto)
        {

            var bt = bd.campos.FirstOrDefault(x => x.nombre == texto);
            if (bt != null)
            {
                CampoActual = bt;
                PrincipalViewModel.EstatusNuevo = false;

            }
            else
            {
                CampoActual = new campos { nombre = texto };
                PrincipalViewModel.EstatusNuevo = true;


            }
        }
        #endregion
        public void Filtro(string id)
        {

            int esto = Int32.Parse(id);
            var bt = bd.campos.FirstOrDefault(x => x.idcampo == esto);
            bd.Entry(bt).Reload();
            CampoActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("CampoActual");


        }
        public void Eliminar()
        {
            try
            {

                Datos.Micontexto.campos.Remove(CampoActual);
                Datos.Micontexto.SaveChanges();
                Datos.Msg("Item eliminado", "Eliminado", "I");
                Nuevo();
            }
            catch (Exception es)
            {
                Datos.Msg("No se puede eliminar el Item, Se han generado procesos con el mismo", "Error", "E");
            }
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
