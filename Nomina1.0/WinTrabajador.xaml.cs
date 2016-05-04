﻿using System;
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
    /// Interaction logic for WinTrabajador.xaml
    /// </summary>
    public partial class WinTrabajador
    {
        trabajador nuevotrabajador = new trabajador();
        TrabajadorController trabajadores = new TrabajadorController();
        public WinTrabajador()
        {
            InitializeComponent();
            DataContext = nuevotrabajador;
            
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            TrabajadorController.TrabajadContext.trabajador.Add(nuevotrabajador);
            TrabajadorController.GuardarTrabajador();
           
        }
    }
}
