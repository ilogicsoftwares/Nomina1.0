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
        

        public TrabajadorController()
        {
            CargarTrabajadores();
            this.TrabajadorActual = Trabajadores.FirstOrDefault();
            this.Lestatus = Datos.Micontexto.estatus.ToList();
            this.Lgrado = Datos.Micontexto.gradointruc.ToList();
        }

        private void CargarTrabajadores()
        {
            this._Trabajadores = Datos.Micontexto.trabajador.ToList().OrderByDescending(o=>o.idtrabajador);
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

      

        private IOrderedEnumerable<trabajador> _Trabajadores;
        public IOrderedEnumerable<trabajador> Trabajadores
        {
            get
            {
                return _Trabajadores;
            }
            set
            {
                _Trabajadores = value;
                RaisePropertyChanged("Trabajadores");
            }
        }

        private trabajador _TrabajadorActual;
        public trabajador TrabajadorActual
        {
            get { return _TrabajadorActual; }
            set { _TrabajadorActual = value;
                RaisePropertyChanged("TrabajadorActual");
            }
        }

        public void NuevoTrabajador()
        {
            trabajador nexttrabajad = new trabajador()
            {
                idtrabajador = TrabajadorActual.idtrabajador + 1,
                Sexo = 1
                
                
            };
            this.TrabajadorActual = nexttrabajad;
        }

      
        public bool Masculino
        {
            get
            { if (TrabajadorActual.Sexo==1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



                 }
            set
            {
                if (value == true)
                {
                   TrabajadorActual.Sexo=1;
                    
                }
                else
                {
                    TrabajadorActual.Sexo = 2;
                }
                RaisePropertyChanged("Masculino");
            }
        }
        public bool Femenino
        {
            get
            {
                if (TrabajadorActual.Sexo == 2)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            set
            {
                if (value == true)
                {
                    TrabajadorActual.Sexo = 2;
                }
                else
                {
                    TrabajadorActual.Sexo =1;
                }
                RaisePropertyChanged("Femenino");
            }
        }

        public bool Soltero
        {
            get
            {
                if (TrabajadorActual.edocivil == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            set
            {
                if (value == true)
                {
                    TrabajadorActual.edocivil = 1;
                }
                else
                {
                    TrabajadorActual.edocivil = 2;
                }
                RaisePropertyChanged("Soltero");
            }
        }
        public bool Casado
        {
            get
            {
                if (TrabajadorActual.edocivil == 2)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            set
            {
                if (value == true)
                {
                    TrabajadorActual.edocivil = 2;
                    
                }
                else
                {
                    TrabajadorActual.edocivil = 1;
                }
                RaisePropertyChanged("Casado");
            }
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
                RaisePropertyChanged("Lestatus");
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
                RaisePropertyChanged("Lestatus");
            }
        }



    }
}
