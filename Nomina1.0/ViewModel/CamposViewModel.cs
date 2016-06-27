using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Nomina1._0.ViewModel
{
    class CamposViewModel:campos, INotifyPropertyChanged
    {

        nominaEntities bd = Datos.Micontexto;
        #region Builder
        public CamposViewModel()
        {
            Nuevo();
        }

        #endregion


        #region EntidadActual

        private campos _CampoActual;
        public campos CampoActual
        {
            get { return _CampoActual; }
            set
            {
                _CampoActual = value;
                NotifyPropertyChanged();
            }
        }

        #endregion

        #region Editores
        public void Guardar()
        {
            try
            {
                bd.campos.Add(CampoActual);
                bd.SaveChanges();
                Datos.Guardado();
                Nuevo();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void Nuevo()
        {
            CampoActual = new campos();

            PrincipalViewModel.EstatusNuevo = true;
        }

        public void Editar()

        {
            bd.SaveChanges();
            Datos.Actualizado();

        }

        public void Buscar(string texto)
        {

            var bt = bd.campos.FirstOrDefault(x => x.nombre == texto);
            if (bt != null)
            {
                CampoActual = bt;
                PrincipalViewModel.EstatusNuevo = false;

            }
            else
            {
                CampoActual = new campos { nombre = texto };
                PrincipalViewModel.EstatusNuevo = true;


            }
        }
        #endregion




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
