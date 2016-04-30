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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.Entity;
using System.Collections;
using Nomina1._0.Controllers;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
  
    public partial class MainWindow : Window
    {
        public UserController initUser = new UserController();
        public MainWindow()
        {
            
            InitializeComponent();
            DataContext = initUser;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
           if ( Datos.ValidarDatos(grid1))
            {
                if (passwordBox.Password.Trim() == comboBox.SelectedValuePath.ToString().Trim())
                {
                    UserController.UsuarioActivo = initUser.UsuarioActual;
                    Datos.AbrirWindow("PrincipalWindow",0);
                    Close();
                    Mensaje.Content = "";
                  
                  
                   
                }else
                {
                    Mensaje.Content=("Clave Invalida...");
                }
            }

        }
    }
}
