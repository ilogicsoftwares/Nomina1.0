using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using Nomina1._0.Controllers;
using System.Windows;
using System.Data.Entity;
using System.Windows.Documents;
using System.Data;

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

           

            this.DataContext = Atrabajadores;
        }
       
        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            Datos.WindowActual = this;
        }

      
   

      

        private void MetroWindow_Closed(object sender, EventArgs e)
        {
            Datos.WindowActual = null;
        }

        private void cedula_LostFocus(object sender, RoutedEventArgs e)
        {
            if (cedula.Text!=string.Empty)
            {
                TrabajadorController.TrabajadorBuscado(cedula.Text);
                DataContext = TrabajadorController.TrabajadorActual;
            }else
            {
                TrabajadorController Atrabajadores = new TrabajadorController();
                this.DataContext = Atrabajadores;
            }
        }

        public void Guardar()
        {
           var original = Datos.Micontexto.trabajador.Find(TrabajadorController.TrabajadorActual.idtrabajador);

            if (original != null)
           {
                Datos.Micontexto.Entry(original).CurrentValues.SetValues(TrabajadorController.TrabajadorActual);
                original.nacionalidad = TrabajadorController.TrabajadorActual.nacionalidad;
                Datos.Micontexto.SaveChanges();
           
           }
        }

        //private void button_Clicevk(object sender, RoutedEventArgs e)
        //{
        //    Datos.Micontexto.trabajador.Add(nuevotrabajador);
        //     TrabajadorController.GuardarTrabajador();

        // }


    }
}
