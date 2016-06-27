using System.Windows;
using System.Windows.Controls;
using Nomina1._0.ViewModel;
namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinConceptos.xaml
    /// </summary>
    public partial class WinConceptos
    {
        public WinConceptos()
        {
            InitializeComponent();
        }

        private void textBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void textBox1_LostFocus(object sender, RoutedEventArgs e)
        {
            ((ConceptosViewModel)DataContext).Buscar(textBox1.Text);
        }

        private void MetroWindow_Activated(object sender, System.EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (ConceptosViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.ObjectType = "conceptos";
            Datos.SelectQuery = "new(idconcepto as ID, codigo as Codigo, nombre as Nombre, variante as Campo, tipo as Tipo)";
        }

        private void MetroWindow_Closed(object sender, System.EventArgs e)
        {
            Datos.ResetAll();
        }

        private void CommandNuevo_Copy1_Click(object sender, RoutedEventArgs e)
        {
       MessageBoxResult x=  MessageBox.Show("Realmente desea eliminar la formula", "Eliminar", MessageBoxButton.YesNo, MessageBoxImage.Question);
         if (x==MessageBoxResult.Yes)
            {
                formula.Text = "";
            }  
        }
    }
}
