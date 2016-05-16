using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using Nomina1._0.Controllers;
using System.Windows;

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
       
            Actualizar();
            
          
        
        }
       
        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            Datos.WindowActual = this;
        }

     
        public void Nuevo()
        {

            Atrabajadores.NuevoTrabajador();
            Datos.HayNuevo = true;
            Actualizar();
        }

        public void Guardar()
        {
            if( Datos.HayNuevo==true)
            {
                Datos.Micontexto.trabajador.Add(Atrabajadores.TrabajadorActual);
                Datos.HayNuevo = false;
            }
            Datos.Micontexto.SaveChanges();
            MessageBox.Show("Se ha Guardado los Datos Exitosamente");
            Actualizar();
        }

        public void Next()
        {
            Atrabajadores.Next();
            Actualizar();

        }

        public void Back()
        {
            Atrabajadores.Back();
            Actualizar();

        }

        public void Eliminar()
        {
            Atrabajadores.Eliminar();
            Actualizar();

        }

        public void Actualizar()
        {

            Grid1.DataContext = Atrabajadores.TrabajadorActual;
            comboBoxestatus.DataContext = Atrabajadores;
            comboBoxgrado.DataContext = Atrabajadores;
            comboBoxnacional.DataContext = Atrabajadores;
            
        }

        private void MetroWindow_Closed(object sender, EventArgs e)
        {
            Datos.WindowActual = null;
        }


        //private void button_Clicevk(object sender, RoutedEventArgs e)
        //{
        //    Datos.Micontexto.trabajador.Add(nuevotrabajador);
        //     TrabajadorController.GuardarTrabajador();

        // }


    }
}
