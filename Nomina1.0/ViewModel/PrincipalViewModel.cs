using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.ViewModel
{
    class PrincipalViewModel:ViewModelBase
    {
        public RelayCommand NuevaEntidadCommand { get; set; }
        public RelayCommand GuardarEntidadCommand { get; set; }
        public RelayCommand EditarEntidadCommand { get; set; }
        public RelayCommand EliminarEntidadCommand { get; set; }
        public static object ObjetoActual { get; set; }
        public static bool EstatusNuevo { get; set; }
    
        public PrincipalViewModel()
        {

            NuevaEntidadCommand = new RelayCommand(NuevaEntidad);
            GuardarEntidadCommand = new RelayCommand(GuardarEntidad);
            EliminarEntidadCommand = new RelayCommand(EliminarEntidad);
            
        }

        private void EliminarEntidad(object obj)
        {
            if (EstatusNuevo == false && Datos.WindowActual!=null)
            {

                var xa = MessageBox.Show("Se eliminaran los datos de forma permanente", "Eliminar", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);

                if (xa == MessageBoxResult.Yes)
                {
                    Datos.EjecutarMetodo(ObjetoActual, "Eliminar");
                }
            }else
            {

            }
        }

        void NuevaEntidad(object entityObject)
        {
            Datos.EjecutarMetodo(ObjetoActual, "Nuevo");
            EstatusNuevo = true;
        }

        void GuardarEntidad(object parameter)
        {
            if (EstatusNuevo == true)
            {
                Datos.EjecutarMetodo(ObjetoActual, "Guardar");
            }
            else
            {
                Datos.EjecutarMetodo(ObjetoActual, "Editar");
            }
        }
       

        
    }
}
