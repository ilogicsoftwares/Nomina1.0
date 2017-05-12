using Nomina1._0.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinRepRecibos.xaml
    /// </summary>
    public partial class WinRepRecibos
    {
        public WinRepRecibos()
        {
            InitializeComponent();
        }

        private void textBox_Copy3_LostFocus(object sender, RoutedEventArgs e)
        {
            reportNominaViewModel.Buscar(textBox_Copy3.Text);
        }

        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = reportNominaViewModel;
            Datos.WindowActual = this;
            Datos.ObjectType = "nominauni";
            Datos.SelectQuery = "new(idnominauni as ID, nominatype.descripcion as Nomina, desde as Desde, hasta as Hasta,totalnomina as Neto, totalasignaciones as Asignaciones, totaldeducciones as Deducciones)";
        }

        private void MetroWindow_Closed(object sender, EventArgs e)
        {
            Datos.ResetAll();
        }
        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            if (reportNominaViewModel.NominaActual.idnominauni != 0)
            {
                PrenominaViewModel nomina = new PrenominaViewModel(reportNominaViewModel.NominaActual.idnominauni);
                if (recibos.IsChecked==true)
                {
                    Datos.FoxReport("recibos", "recibos.txt", this.textBox_Copy3.Text);
                }
                if (resumen.IsChecked == true)
                {
                    nomina.GenerarResumen();
                }
                if (txt.IsChecked == true)
                {
                    nomina.CrearTxt(reportNominaViewModel.Fecha,reportNominaViewModel.Dividir);
                }
            }
        }
    }
}
