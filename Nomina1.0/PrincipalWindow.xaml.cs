using System;
using System.Windows;
using Nomina1._0.ViewModel;
using System.Linq;

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
          
           
            LogingViewModel.userMenu();
         
            grid1.Children.Add(LogingViewModel.UserMenu);
         

        }

        private void CommandGuardar_Copy_Click(object sender, RoutedEventArgs e)
        {
            if (Datos.ObjectType == string.Empty || Datos.SelectQuery == string.Empty) { return; }
            WinBusqueda busqueda = new WinBusqueda("Buscar",Datos.ObjectType,Datos.SelectQuery);
           busqueda.ShowDialog();
        }
    }
}
