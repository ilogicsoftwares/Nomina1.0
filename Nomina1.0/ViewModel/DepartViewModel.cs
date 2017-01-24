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
    class DepartViewModel:departamentos, INotifyPropertyChanged
    {
        nominaEntities bd = Datos.Micontexto;
        #region Builder
        public DepartViewModel()
        {
            Nuevo();
        }

        #endregion


        #region EntidadActual

        private departamentos _DepartActual;
        public departamentos DepartActual
        {
            get { return _DepartActual; }
            set
            {
                _DepartActual = value;
                NotifyPropertyChanged("DepartActual");
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
                    bd.departamentos.Add(DepartActual);
                    bd.SaveChanges();
                    Datos.Guardado();
                    Nuevo();
                }
                catch (Exception)
                {
                    Datos.Msg("Error al guardar verifique y/o complete los datos", "Error Al Guardar", "E");
                }
            }
        }

        public void Nuevo()
        {
            DepartActual = new departamentos();
          
            PrincipalViewModel.EstatusNuevo = true;
        }

        public void Editar()

        {  try
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

            var bt = bd.departamentos.FirstOrDefault(x => x.codigo == texto);
            if (bt != null)
            {
                DepartActual = bt;
                PrincipalViewModel.EstatusNuevo = false;

            }
            else
            {
                DepartActual = new departamentos { codigo = texto };
                PrincipalViewModel.EstatusNuevo = true;


            }
        }
        public void Eliminar()
        {
            try
            {
                Datos.Micontexto.departamentos.Remove(DepartActual);
                Datos.Micontexto.SaveChanges();
                Datos.Msg("Item eliminado", "Eliminado", "I");
                Nuevo();
            }
            catch (Exception es)
            {
                Datos.Msg("No se puede eliminar el Item, Se han generado procesos con el mismo" , "Error", "E");
            }
        }
        #endregion
        public void Filtro(string id)
        {
         
            int esto = Int32.Parse(id);
            var bt = bd.departamentos.FirstOrDefault(x => x.iddepartamentos == esto);
            bd.Entry(bt).Reload();

            DepartActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("DepartActual");


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
