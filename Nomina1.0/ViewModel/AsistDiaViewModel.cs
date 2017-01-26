using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class AsistDiaViewModel: INotifyPropertyChanged
    {


       public  AsistDiaViewModel()
        {
           
            Fecha = DateTime.Today;

        }

        private List<controlasist> _ControlDia;
        public List<controlasist> ControlDia
        {
            get { return _ControlDia; }
            set
            {
                _ControlDia = value;
                NotifyPropertyChanged();
               
            }
        }
        private controlasist _SControlDia;
        public controlasist SControlDia
        {
            get { return _SControlDia; }
            set
            {
                _SControlDia = value;
                NotifyPropertyChanged();

            }
        }

        private DateTime _Fecha;
        public DateTime Fecha
        {
            get { return _Fecha; }
            set
            {
                _Fecha = value;
                FiltrarPorFecha(value);
                NotifyPropertyChanged();

            }
        }

        public void FiltrarPorFecha(DateTime date)
        {
            ControlDia = Datos.Micontexto.controlasist.Where(x => x.date == date).ToList();
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
