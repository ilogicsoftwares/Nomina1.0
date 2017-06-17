using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nomina1._0.ViewModel
{
    class EmpresaViewModel:ViewModelBase
    {
        public RelayCommand GuardarEmpresaCommand { get; set; }
        public RelayCommand AsignarLogoCommand { get; set; }
        nominaEntities bd;
        public EmpresaViewModel()
        {
            bd = new nominaEntities();
            GuardarEmpresaCommand = new RelayCommand(GuardarEmpresa);
            AsignarLogoCommand = new RelayCommand(AsignaLogo);
            EmpresaActual = bd.empresa.FirstOrDefault();
        }

        private void AsignaLogo(object obj)
        {
            OpenFileDialog browser = new OpenFileDialog();
            string tempPath = "";

            if (browser.ShowDialog() == DialogResult.OK)
            {
                logo = browser.FileName; // prints path
            }
        }

        private void GuardarEmpresa(object obj)
        {
            bd.SaveChanges();
        }


        private empresa _EmpresaActual;
        public empresa EmpresaActual
        {
            get
            {
                return _EmpresaActual;
            }
            set
            {
                _EmpresaActual = value;
                NotifyPropertyChanged();
            }
        }


        private string _logo;
        public string logo
        {
            get
            {
                return EmpresaActual.Logo;
            }
            set
            {
              
                EmpresaActual.Logo = value;
                NotifyPropertyChanged();
            }
        }




    }
}
