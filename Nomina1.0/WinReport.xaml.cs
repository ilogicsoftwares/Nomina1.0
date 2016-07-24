using Microsoft.Reporting.WinForms;
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
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinReport.xaml
    /// </summary>
    public partial class WinReport : Window
    {
        private object Consulta;
        private string Reporte;
        public WinReport(object consulta,string report)
        {
            InitializeComponent();
            Consulta = consulta;
            Reporte = report;
            _reportViewer.Load += ReportViewer_Load;
        }
    

        private void ReportViewer_Load(object sender, EventArgs e)
        {
       
            
            ReportDataSource reportDataSource = new ReportDataSource();
            reportDataSource.Name = "DataSet1"; // Name of the DataSet we set in .rdlc
            reportDataSource.Value = Consulta;
            _reportViewer.LocalReport.ReportPath = Reporte;//"C:\\Nomina1.0\\Nomina1.0\\Reports\\ReciboPago.rdlc"; // Path of the rdlc file
            
            _reportViewer.LocalReport.DataSources.Add(reportDataSource);
       
            _reportViewer.SetDisplayMode(DisplayMode.PrintLayout);
          
            _reportViewer.RefreshReport();
        }
    }
}
