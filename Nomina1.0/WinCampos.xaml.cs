using System.Windows;
using Nomina1._0.ViewModel;
namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinCampos.xaml
    /// </summary>
    public partial class WinCampos
    {
        public WinCampos()
        {
            InitializeComponent();
        }

        private void textBox_LostFocus(object sender, RoutedEventArgs e)
        {
            ((CamposViewModel)DataContext).Buscar(textBox.Text);
            
        }

        private void MetroWindow_Activated(object sender, System.EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (CamposViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.SelectQuery = "new(idcampo as ID,Nombre,Descripcion,valorinicial as Valor,esReiniciado as Reiniciar)";
            Datos.ObjectType = "campos";
        }

        private void MetroWindow_Closed(object sender, System.EventArgs e)
        {
            Datos.ResetAll();
        }
    }
}
