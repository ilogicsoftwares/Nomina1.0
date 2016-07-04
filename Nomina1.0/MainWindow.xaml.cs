using System;
using System.Windows;
using MahApps.Metro.Controls;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>

    public partial class MainWindow:MetroWindow 
    {
        public LogingViewModel initUser = new LogingViewModel();
        public MainWindow()
        {
            this.WindowStyle = WindowStyle.ThreeDBorderWindow;
            InitializeComponent();
            DataContext = initUser;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
         
                if (passwordBox.Password.Trim() == comboBox.SelectedValuePath.ToString().Trim())
                {
                    LogingViewModel.UsuarioActivo = initUser.UsuarioActual;
                    Datos.AbrirWindow("Ilogic Softwares Nomina -"+" Usuario: " + LogingViewModel.UsuarioActivo.descripcion,"PrincipalWindow","0");
                    Close();
                    Mensaje.Content = "";
                  
                  
                   
                }else
                {
                    Mensaje.Content=("Clave Invalida...");
                }
            

        }
    }
}
