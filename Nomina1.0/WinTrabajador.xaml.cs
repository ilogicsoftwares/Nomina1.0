using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using Nomina1._0.Controllers;
namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinTrabajador.xaml
    /// </summary>
    public partial class WinTrabajador
    {

        TrabajadorController Atrabajadores = new TrabajadorController();
        public WinTrabajador()
        {
            InitializeComponent();
            
            
          
            Grid1.DataContext = Atrabajadores.TrabajadorActual;
            StackSexo.DataContext = Atrabajadores;
            StackEdoCivil.DataContext = Atrabajadores;

        }
       
        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            Datos.WindowActual = this;
        }

     
        public void Nuevo()
        {

            Atrabajadores.NuevoTrabajador();
            Grid1.DataContext = Atrabajadores.TrabajadorActual;
        }

       

        //private void button_Clicevk(object sender, RoutedEventArgs e)
        //{
        //    Datos.Micontexto.trabajador.Add(nuevotrabajador);
        //     TrabajadorController.GuardarTrabajador();

        // }


    }
}
