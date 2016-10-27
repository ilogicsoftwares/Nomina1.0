using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class ReportNominaViewModel:nominauni, INotifyPropertyChanged
    {
        nominaEntities bd = Datos.Micontexto;
        #region Builder
        public ReportNominaViewModel()
        {
            Dividir = 1;
            Fecha = DateTime.Now;
            Nuevo();
        }

        #endregion


        #region EntidadActual

        private nominauni _NominaActual;
        public nominauni NominaActual
        {
            get { return _NominaActual; }
            set
            {
                _NominaActual = value;
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
                NotifyPropertyChanged();
            }
        }
        private int _Dividir;
        public int Dividir
        {
            get { return _Dividir; }
            set
            {
                _Dividir = value;
                NotifyPropertyChanged();
            }
        }

        #endregion

        #region Editores


        public void Nuevo()
        {
            NominaActual = new nominauni();

            PrincipalViewModel.EstatusNuevo = true;
        }

       

        public void Buscar(string texto)
        {
            int num;
           if (!int.TryParse(texto,out num))
            {
                return;
            }

            var texttoInt = int.Parse(texto);
            var bt = bd.nominauni.FirstOrDefault(x => x.idnominauni == texttoInt);

            if (bt != null)
            {
               
                NominaActual = bt;
                PrincipalViewModel.EstatusNuevo = false;

            }
            else
            {
                NominaActual = new nominauni { idnominauni = texttoInt };
                PrincipalViewModel.EstatusNuevo = true;


            }
        }
        #endregion
        public void Filtro(string id)
        {

            int esto = Int32.Parse(id);
            var bt = bd.nominauni.FirstOrDefault(x => x.idnominauni == esto);
            bd.Entry(bt).Reload();
            NominaActual = bt;
            PrincipalViewModel.EstatusNuevo = false;
            NotifyPropertyChanged("NominaActual");


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
