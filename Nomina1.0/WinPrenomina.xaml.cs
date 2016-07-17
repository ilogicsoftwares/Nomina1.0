using MahApps.Metro.Controls;
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
    /// Lógica de interacción para WinPrenomina.xaml
    /// </summary>
    public partial class WinPrenomina 
    {
        PrenominaViewModel nomina;
        public WinPrenomina(object Prenomina)
        {
            nomina = Prenomina as PrenominaViewModel;
            WindowStyle = WindowStyle.ToolWindow;
            
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            InitializeComponent();
            DataContext = nomina;
        }
        public WinPrenomina()
        {
            InitializeComponent();
            button_Copy.Content = "Ver";
        }
        private void button_Copy_Click(object sender, RoutedEventArgs e)
        {
            if (button_Copy.Content.ToString() != "Ver")
            { nomina.GenerarNomina(); }
          
            var dt = from trabs in nomina.NominaActual
                     select new PNominaGen
                     {
                         TrabID = trabs.trabajador.idtrabajador,
                         TrabNombre = trabs.trabajador.nombres.Trim() + " " + trabs.trabajador.apellidos.Trim(),
                         TrabCedula = trabs.trabajador.cedula,
                         Departamento = trabs.trabajador.departamentos.Descripcion,
                         Cargo = trabs.trabajador.cargo.Descripcion,
                         FechaIng = trabs.trabajador.Fechaing,
                         SueldoBase = trabs.trabajador.Sueldo,
                         SueldoDiario = 1,
                         IdConcepto = trabs.idconcepto,
                         NombreConcepto = trabs.nombrecon,
                         Variante = trabs.valorvar,
                         ConceptoTipo = trabs.tipoconcepto,
                         Valor = trabs.valorconcepto,
                         Nomina = trabs.nominatype.descripcion,
                         FD = PrenominaViewModel.FechaD,
                         FH = PrenominaViewModel.FechaA


                     };

            WinReport report = new WinReport(dt.ToList(), "C:\\Nomina1.0\\Nomina1.0\\Reports\\ReciboPago.rdlc");
            report.ShowDialog();
            if (checkBox.IsChecked==true)
            { 
            WinReport report2 = new WinReport(dt.ToList(), "C:\\Nomina1.0\\Nomina1.0\\Reports\\NominaGeneral.rdlc");
            report2.ShowDialog();
            }
            if (checkBox_Copy.IsChecked==true)
            {
                nomina.CrearTxt();
            }
        }
    }
}
