using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class ReportAsistViewModel:ViewModelBase
    {
        public class ReportAsist
        {
            public int TraID { get; set; }
            public string TraCodigo { get; set; }
            public string TraCedula { get; set; }
            public DateTime Fecha { get; set; }
            public int Asistencia { get; set; }
        }

        public ReportAsistViewModel()
        {

        }


        private DateTime _FDesde;
        public DateTime FDesde
        {
            get
            {
                return _FDesde;
            }
            set
            {
                _FDesde = value;
                NotifyPropertyChanged();
            }
        }


        private DateTime _FHasta;
        public DateTime FHasta
        {
            get
            {
                return _FHasta;
            }
            set
            {
                _FHasta = value;
                NotifyPropertyChanged();
            }
        }

        private List<nominatype> _Nominas;
        public List<nominatype> Nominas
        {
            get
            {
                return _Nominas;
            }
            set
            {
                _Nominas = value;
                NotifyPropertyChanged();
            }
        }


    }
}
