using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class ModelBase: INotifyPropertyChanged
    {

        #region ListPropertys


        #endregion

        #region DefineDatabase


        #endregion

        #region Builder
        //public  ModelBase()
        //{
        //    Nuevo();
        //}

        #endregion


        #region EntidadActual

        // private trabajador _TrabajadorActual;
        // public trabajador TrabajadorActual
        //{
        //   get { return _TrabajadorActual; }
        //   set { _TrabajadorActual = value; }
        //}

        #endregion

        #region Editores
        /*  public void Guardar()
          {
              try
              {
                  bd.trabajador.Add(TrabajadorActual);
                  bd.SaveChanges();
                  MessageBox.Show("Datos Guardados Exitosamente");
                  Nuevo();
              }
              catch (Exception exc)
              {

              }
          }

          public void Nuevo()
          {
              TrabajadorActual = new trabajador();
              NotifyPropertyChanged("TrabajadorActual");
              PrincipalViewModel.EstatusNuevo = true;
          }

          public void Editar()

          {
              bd.SaveChanges();
              MessageBox.Show("Datos Actualizados");

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
                  TrabajadorActual = new trabajador { cedula = cedulax };
                  PrincipalViewModel.EstatusNuevo = true;
                  NotifyPropertyChanged("TrabajadorActual");

              }
          }*/
        #endregion
        #region Implementation
        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        #endregion

    }
}
