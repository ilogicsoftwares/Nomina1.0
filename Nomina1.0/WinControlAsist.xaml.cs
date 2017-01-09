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
using System.Windows.Threading;
using System.Timers;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinControlAsist.xaml
    /// </summary>
    public partial class WinControlAsist 
    {
        DispatcherTimer Timer1 = new DispatcherTimer();
        SolidColorBrush actualcolor;
        public WinControlAsist()
        {
            
            
          
            
            InitializeComponent();
            ShowMaxRestoreButton = true;
            Timer1.Tick += Timer_Tick;
            Timer1.Interval = new TimeSpan(0,0,0,0,100);
            actualcolor = textBox.Background as SolidColorBrush;
        }
        int counter = 0;
        private void Timer_Tick(object sender, EventArgs e)
        {
            counter += 100;
            
            textBox.Background = Brushes.Red;
            if (counter >=Control.Configuracion.MaxTimeCheck)
            {
                saludo.Opacity -= 0.1;
                errorMsg.Opacity -= 0.1;
                nombre.Opacity -= 0.1;
                Tempo.Opacity -= 0.1;
                if (saludo.Opacity <= 0)
                {
                   
                    DataContext = new ControlAsistViewModel();
                    Timer1.Stop();
                    saludo.Opacity = 1;
                    errorMsg.Opacity = 1;
                    nombre.Opacity = 1;
                    Tempo.Opacity = 1;
                    counter = 0;
                    textBox.IsEnabled = true;
                    textBox.Focus();
                    textBox.Background = actualcolor;
                }
            }
        }

        private void label_TargetUpdated(object sender, DataTransferEventArgs e)
        {
            
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            textBox.IsEnabled = false;
            Timer1.Start();
        }

        private void MetroToolWindowBase_Activated(object sender, EventArgs e)
        {
            textBox.Focus();
        }
    }
}
