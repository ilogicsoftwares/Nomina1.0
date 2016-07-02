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
        public WinPrenomina(object Prenomina)
        {
            PrenominaViewModel nomina = Prenomina as PrenominaViewModel;
            WindowStyle = WindowStyle.ToolWindow;
            
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            InitializeComponent();
            DataContext = nomina;
        }
    }
}
