using System;
using System.Windows;
using System.Windows.Controls;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinNomina.xaml
    /// </summary>
    public partial class WinNomina
    {
        public WinNomina()
        {
            InitializeComponent();
        }

        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (NominaViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.ObjectType = "nominatype";
            Datos.SelectQuery = "new(idnomina as ID, scodigo as Codigo, descripcion as Nombre,intervalo as Intervalo,conceptos As Conceptos)";
            
        }

        private void MetroWindow_Closed(object sender, EventArgs e)
        {
            Datos.ResetAll();
        }

        private void textBox_LostFocus(object sender, RoutedEventArgs e)
        {
            ((NominaViewModel)DataContext).Buscar(textBox.Text);
        }

        private void listBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           
        }
    }
}
