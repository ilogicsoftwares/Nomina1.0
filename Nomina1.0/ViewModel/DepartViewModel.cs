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
                NotifyPropertyChanged();
            }
        }

        #endregion
        #region Editores
        public void Guardar()
        {
            try
            {
                bd.departamentos.Add(DepartActual);
                bd.SaveChanges();
                MessageBox.Show("Datos Guardados Exitosamente");
                Nuevo();
            }
            catch (Exception)
            {

            }
        }

        public void Nuevo()
        {
            DepartActual = new departamentos();
          
            PrincipalViewModel.EstatusNuevo = true;
        }

        public void Editar()

        {
            bd.SaveChanges();
            MessageBox.Show("Datos Actualizados");

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
        #endregion


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
