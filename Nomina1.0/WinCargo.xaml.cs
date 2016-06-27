using System.Windows;
using Nomina1._0.ViewModel;
namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinCargo.xaml
    /// </summary>
    public partial class WinCargo 
    {
        public WinCargo()
        {
            InitializeComponent();
        }

        private void textBox_LostFocus(object sender, RoutedEventArgs e)
        {
            ((CargoViewModel)DataContext).Buscar(textBox.Text);
        }

        private void MetroWindow_Activated(object sender, System.EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (CargoViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.SelectQuery ="new(idcargo as ID,sidcargo as Codigo,Nombre,Descripcion,departamentos.Descripcion as Departamento,conceptos as Conceptos )";
            Datos.ObjectType = "cargo";
        }

        private void textBox_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {

        }

        private void MetroWindow_Closed(object sender, System.EventArgs e)
        {
            Datos.ResetAll();
        }
    }
}
