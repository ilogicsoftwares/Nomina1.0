using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.Controllers
{
    class TrabajadorController
    {
        public static nominaEntities TrabajadContext = new nominaEntities();

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
        public static void GuardarTrabajador()
        {
            try
            {
                TrabajadContext.SaveChanges();
            }catch(DbEntityValidationException exe)

            {
                MessageBox.Show(exe.EntityValidationErrors.ToString());
            }
           
        }

        public static void AgregarTrabajador()
        {
            TrabajadContext.SaveChanges();
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
