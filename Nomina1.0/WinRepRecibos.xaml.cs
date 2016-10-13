using Nomina1._0.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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
            Datos.SelectQuery = "new(idnominauni as ID, idnominatype as Nomina, desde as Desde, hasta as Hasta,totalnomina as Neto, totalasignaciones as Asignaciones, totaldeducciones as Deducciones)";
        }

        private void MetroWindow_Closed(object sender, EventArgs e)
        {
            Datos.ResetAll();
        }
    }
}
