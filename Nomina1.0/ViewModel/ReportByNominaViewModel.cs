using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class ReportByNominaViewModel: INotifyPropertyChanged
    {
      
        

        public ReportByNominaViewModel()
        {
            nominas = Datos.Micontexto.nominatype.ToList();
        }
        private List<nominatype> _nominas;
        public List<nominatype> nominas
        {
            get
            {
                return _nominas;
            }
            set
            {
                _nominas = value;
                NotifyPropertyChanged();
            }

        }
        private nominatype _nominaActual;
        public nominatype nominaActual
        {
            get
            {
                return _nominaActual;
            }
            set
            {
                _nominaActual = value;
                NotifyPropertyChanged();
            }

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
