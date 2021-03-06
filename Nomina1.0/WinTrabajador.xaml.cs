﻿using Nomina1._0.ViewModel;
using System.Linq;
using System.Windows;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinTrabajador.xaml
    /// </summary>
    public partial class WinTrabajador
    {
   
       public WinTrabajador()
        {
            InitializeComponent();
        }

        private void cedula_LostFocus(object sender, System.Windows.RoutedEventArgs e)
        {
            ((TrabajadorViewModel)DataContext).Buscar(cedula.Text);
        }

        private void cedula_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {

        }

        private void MetroWindow_Activated(object sender, System.EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (TrabajadorViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.ObjectType = "trabajador";
            Datos.SelectQuery = "new(idtrabajador as ID, nombres as Nombres, apellidos as Apellidos, cedula as Cedula,nominatype.descripcion as Nomina, departamentos.Descripcion as Departamento, cargo.Nombre as Cargo, Sueldo)";





        }

        private void MetroWindow_Closed(object sender, System.EventArgs e)
        {
            Datos.ResetAll();
        }

        private void comboNomina_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            TrabajadorViewModel tra = (TrabajadorViewModel)DataContext;
            tra.ConceptosViewList.CargaPorNomina((nominatype)comboNomina.SelectedValue);
        }

        private void comboNomina_Copy_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            TrabajadorViewModel tra = (TrabajadorViewModel)DataContext;
            tra.BonosConceptosViewList.CargaPorNomina((nominatype)comboNomina_Copy.SelectedValue);
        }

        private void CommandNuevo_Copy4_Click(object sender, RoutedEventArgs e)
        {
           
        }
    }
    
}
