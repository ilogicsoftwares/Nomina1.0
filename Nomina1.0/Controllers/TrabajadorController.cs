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
        

        public TrabajadorController()
        {
            CargarTrabajadores();
        }

        private void CargarTrabajadores()
        {
            this._Trabajadores = Datos.Micontexto.trabajador.ToList();
        }

        public static void BuscarTabajador(int id)
        {

        }
        public static void GuardarTrabajador()
        {
            try
            {
                Datos.Micontexto.SaveChanges();
            }catch(DbEntityValidationException exe)

            {
                MessageBox.Show(exe.EntityValidationErrors.ToString());
            }
           
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

        private trabajador _Ntrabajador;
        public trabajador Ntrabajador
        {
            get { return _Ntrabajador; }
            set { _Ntrabajador = value; }
        }

        



    }
}
