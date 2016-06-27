using System.Windows;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinDepartamento.xaml
    /// </summary>
    public partial class WinDepartamento 
    {
        public WinDepartamento()
        {
            InitializeComponent();
        }

       


        private void textBox_LostFocus_1(object sender, RoutedEventArgs e)
        {
            ((DepartViewModel)DataContext).Buscar(textBox.Text);
        }

        private void MetroWindow_Activated_1(object sender, System.EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (DepartViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.ObjectType = "departamentos";
            Datos.SelectQuery = "new(iddepartamentos as ID,codigo as Codigo, Descripcion as Nombre)";
            
        }

        private void MetroWindow_Closed(object sender, System.EventArgs e)
        {
            Datos.ResetAll();
        }
    }
    
}
