using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class ListCamposModel: INotifyPropertyChanged
    {
        public RelayCommand ChangeValueCommand { get; set; }
        public ListCamposModel(int idtrabajador)
        {
            ObtenerCampos(idtrabajador);
            ChangeValueCommand = new RelayCommand(ChangeValue);
        }

        private List<campotra> _ListaCampos;
       public List<campotra> ListaCampos
        {
            get
            {
                return _ListaCampos;
            }
            set
            {
                _ListaCampos = value;
                NotifyPropertyChanged("ListaCampos");
            }
           
        }

       private void ObtenerCampos(int idtrabajador)
        {
            ListaCampos = Datos.Micontexto.campotra.Where(x => x.idtrabajador == idtrabajador).ToList();
              
            
        }

        public void ChangeValue(object Campotra)
        {
            if (Campotra==null)
            { return; }
            var ncampo = Campotra as campotra;
            WinChangeValues cambiavalor = new WinChangeValues(ncampo, ncampo.nombrecampo);
            cambiavalor.ShowDialog();
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
