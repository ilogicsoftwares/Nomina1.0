using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.Controllers
{
    class TrabajadorController:ViewModelBase
    {

        int indiceactual=0;
        public TrabajadorController()
        {
            CargarTrabajadores();
           

        }

        public void Next()
        {
            if (indiceactual < (Trabajadores.Count()-1))
            {
                indiceactual += 1;
                TrabajadorActual = Trabajadores[indiceactual];
            }
        }
        public void Back()
        {
            if (indiceactual >0)
            {
                indiceactual -= 1;
                TrabajadorActual = Trabajadores[indiceactual];
            }
        }
        public void Eliminar()
        {
            if (MessageBox.Show("Seguro Desea Eliminar el Trabajador", "Eliminar", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {

                Datos.Micontexto.trabajador.Remove(TrabajadorActual);
                Datos.Micontexto.SaveChanges();
                indiceactual = 0;
                CargarTrabajadores();
            }
        }

        private void CargarTrabajadores()
        {
            Trabajadores = Datos.Micontexto.trabajador.ToList();
            TrabajadorActual = Trabajadores[indiceactual];
            Lestatus = Datos.Micontexto.estatus.ToList();
            Lgrado = Datos.Micontexto.gradointruc.ToList();
            Lnac = Datos.Micontexto.nacionalidad.ToList();
           
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
                NotifyPropertyChanged();
            }
        }

        private trabajador _TrabajadorActual;
        public  trabajador TrabajadorActual
        {
            get { return _TrabajadorActual; }
            set { _TrabajadorActual = value;
                NotifyPropertyChanged();
            }
        }

        public void NuevoTrabajador()
        {
            trabajador nexttrabajad = new trabajador();
        
         
          TrabajadorActual = nexttrabajad;
        
          
        }
       
            

        private List<estatus> _Lestatus;
        public List<estatus> Lestatus
        {
            get
            {
                return _Lestatus;
            }
            set
            {
                _Lestatus = value;
                NotifyPropertyChanged();
            }
        }
        private List<nacionalidad> _Lnac;
        public List<nacionalidad> Lnac
        {
            get
            {
                return _Lnac;
            }
            set
            {
                _Lnac = value;
                NotifyPropertyChanged();
            }
        }

        private List<gradointruc> _Lgrado;
        public List<gradointruc> Lgrado
        {
            get
            {
                return _Lgrado;
            }
            set
            {
                _Lgrado = value;
                NotifyPropertyChanged();
            }
        }



    }
}
