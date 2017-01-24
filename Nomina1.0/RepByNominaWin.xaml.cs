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
using System.Linq.Dynamic;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for RepByNominaWin.xaml
    /// </summary>
    public partial class RepByNominaWin
    {
        public List<trabajador> trabajadores { get; set; }
        public string ReportName { get; set; }
        public RepByNominaWin()
        {
            InitializeComponent();
        }
        public RepByNominaWin(string reportname)
        {
            ReportName = reportname;
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
           if (nominaViewModel.nominaActual ==null )
            {
                trabajadores = Datos.Micontexto.trabajador.Where(x => x.estatus.idestatus == 1).ToList(); 
            }else
            {
                trabajadores = Datos.Micontexto.trabajador.Where(x => x.estatus.idestatus == 1).Where(x=>x.nominatype.idnomina==nominaViewModel.nominaActual.idnomina || x.nominatype1.idnomina == nominaViewModel.nominaActual.idnomina).ToList();
            }
            WinReport newreport = new WinReport(trabajadores, "C:\\Nomina1.0\\Nomina1.0\\Reports\\" + ReportName + ".rdlc");
            newreport.Show();
        }
    }
}

