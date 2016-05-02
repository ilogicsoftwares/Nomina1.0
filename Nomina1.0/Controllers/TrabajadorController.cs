using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.Controllers
{
    class TrabajadorController
    {
        static nominaEntities TrabajadContext = new nominaEntities();

        public TrabajadorController()
        {
            CargarTrabajadores();
        }

        private void CargarTrabajadores()
        {
            this._Trabajadores = TrabajadContext.trabajador.ToList();
        }

        public static void BuscarTabajador(int id)
        {

        }

        private List<trabajador> _Trabajadores;
        public List<trabajador> Trabajadores
        {
            get
            {
                return _Trabajadores;
            }
            set
            {
                _Trabajadores = value;
            }
        }
        
    }
}
