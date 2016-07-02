using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

using MahApps.Metro.Controls;

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinChangeValues.xaml
    /// </summary>
    public partial class WinChangeValues
    {
        public WinChangeValues(campotra Campo,string title)
        {
            InitializeComponent();
            Title = title;
            WindowStyle = WindowStyle.ToolWindow;
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            DataContext = Campo;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
