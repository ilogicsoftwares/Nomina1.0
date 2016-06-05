using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class PrincipalViewModel
    {
        public RelayCommand NuevaEntidadCommand { get; set; }
        public static string ObjetoActual;
        public PrincipalViewModel()
        {

            NuevaEntidadCommand = new RelayCommand(NuevaEntidad);

        }

        void NuevaEntidad(object parameter)
        {

        }
    }
}
