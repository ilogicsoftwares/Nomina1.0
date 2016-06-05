using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity.Validation;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;


namespace Nomina1._0.ViewModel
{
    class TrabajadorViewModel:trabajador,INotifyPropertyChanged
    {

        public static List<departamentos> Ldepart { get { return Datos.Micontexto.departamentos.ToList();}}
        public static List<estatus> Lestatus { get { return Datos.Micontexto.estatus.ToList();}}
        public static List<cargo> Lcargo { get { return Datos.Micontexto.cargo.ToList(); }}
        public static List<nominatype> Lnomina { get { return Datos.Micontexto.nominatype.ToList(); } }
        public static List<nacionalidad> Lnac {get { return Datos.Micontexto.nacionalidad.ToList(); }}
        public static List<gradointruc> Lgrado { get { return Datos.Micontexto.gradointruc.ToList(); }}
        public static List<bancos> Lbanco { get { return Datos.Micontexto.bancos.ToList();}}
        public static List<tipocuenta> Ltipoc { get { return Datos.Micontexto.tipocuenta.ToList(); } }

        nominaEntities bd = Datos.Micontexto;
        public RelayCommand AgregarTrabCommand { get; set; }
        public TrabajadorViewModel()
        {

            CargaListasyComandos();
            TrabajadorActual = new trabajador();
            

        }
        public TrabajadorViewModel(string cedula)
        {
            CargaListasyComandos();
            TrabajadorActual = bd.trabajador.FirstOrDefault(x => x.cedula == cedula);
        }

        void CargaListasyComandos()
        {
           
            AgregarTrabCommand = new RelayCommand(Agregar);
        }

        private trabajador _TrabajadorActual;
        public trabajador TrabajadorActual
        {
            get { return _TrabajadorActual; }
            set { _TrabajadorActual = value; }
        }
       

     
        void Agregar(object parameter)
        {
            bd.trabajador.Add((trabajador)parameter);
            bd.SaveChanges();
        }


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
