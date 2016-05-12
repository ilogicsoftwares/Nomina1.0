using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinTrabajador.xaml
    /// </summary>
    public partial class WinTrabajador
    {

        IOrderedEnumerable<trabajador> listatrabajad = Datos.Micontexto.trabajador.ToList().OrderByDescending(o=>o.idtrabajador);
        public WinTrabajador()
        {
            InitializeComponent();
            
            
            DataContext = listatrabajad;
        }
       
        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            Datos.WindowActual = this;
        }

     
        public void Nuevo()
        {
            var ultimoid = listatrabajad.FirstOrDefault().idtrabajador;
            trabajador elgue = new trabajador()
            {
                idtrabajador = ultimoid + 1
            };

            DataContext = elgue;
           
        }

       

        //private void button_Clicevk(object sender, RoutedEventArgs e)
        //{
        //    Datos.Micontexto.trabajador.Add(nuevotrabajador);
        //     TrabajadorController.GuardarTrabajador();

        // }


    }
}
