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
using Nomina1._0.Controllers;
using MahApps.Metro.Controls;
namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for PrincipalWindow.xaml
    /// </summary>
    public partial class PrincipalWindow 
    {
       
        public PrincipalWindow()
        {
           
            InitializeComponent();
          
            this.Title += " Usuario: " + UserController.UsuarioActivo.descripcion;
           UserController.userMenu();
         
            grid1.Children.Add(UserController.UserMenu);
         

        }

        private void CommandNuevo_Click(object sender, RoutedEventArgs e)
        {
            Datos.EjecutarMetodo(Datos.WindowActual, "Nuevo");
        }

        private void CommandGuardar_Click(object sender, RoutedEventArgs e)
        {
            try {
                Datos.EjecutarMetodo(Datos.WindowActual, "Guardar");
              
            }
            catch(Exception exec)
            {
                MessageBox.Show(exec.ToString());
            }
        }

        private void CommandNuevo_Copy1_Click(object sender, RoutedEventArgs e)
        {
            Datos.EjecutarMetodo(Datos.WindowActual, "Next");
        }

        private void CommandNuevo_Copy_Click(object sender, RoutedEventArgs e)
        {
            Datos.EjecutarMetodo(Datos.WindowActual, "Back");
        }

        private void CommandEliminar_Click(object sender, RoutedEventArgs e)
        {
            Datos.EjecutarMetodo(Datos.WindowActual, "Eliminar");
        }
    }
}
