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

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinGenNomina.xaml
    /// </summary>
    public partial class WinGenNomina 
    {
        public WinGenNomina()
        {
            InitializeComponent();
        }

        private void MetroWindow_Activated(object sender, EventArgs e)
        {
            Datos.WindowActual = this;
        }
    }
}
