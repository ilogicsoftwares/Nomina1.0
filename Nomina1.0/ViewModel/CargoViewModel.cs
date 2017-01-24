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
    class CargoViewModel:cargo, INotifyPropertyChanged
    {
        #region ListPropertys
        public static List<departamentos> Ldepart { get { return Datos.Micontexto.departamentos.ToList(); } }

        #endregion

        #region DefineDatabase

        nominaEntities bd = Datos.Micontexto;
        #endregion

        #region Builder
        public CargoViewModel()
        {
            Nuevo();
        }

        #endregion


        #region EntidadActual

         private cargo _CargoActual;
         public cargo CargoActual
       {
          get { return _CargoActual; }
           set { _CargoActual = value;
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
                        bd.cargo.Add(CargoActual);
                        bd.SaveChanges();
                        MessageBox.Show("Datos Guardados Exitosamente");
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
              CargoActual = new cargo();
              NotifyPropertyChanged("CargoActual");
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

              var bt = bd.cargo.FirstOrDefault(x => x.sidcargo == texto);
              if (bt != null)
              {
                  CargoActual = bt;
                  PrincipalViewModel.EstatusNuevo = false;
                  
              }
              else
              {
                   CargoActual = new cargo { sidcargo = texto };
                  PrincipalViewModel.EstatusNuevo = true;
               

              }
          }
        public void Eliminar()
        {
            try
            {
                Datos.Micontexto.cargo.Remove(CargoActual);
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
            var bt = bd.cargo.FirstOrDefault(x => x.idcargo == esto);
            bd.Entry(bt).Reload();

            CargoActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("CargoActual");


        }
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
