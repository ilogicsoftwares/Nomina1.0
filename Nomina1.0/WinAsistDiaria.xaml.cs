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
    /// Interaction logic for WinAsistDiaria.xaml
    /// </summary>
    public partial class WinAsistDiaria 
    {
        public WinAsistDiaria()
        {
            InitializeComponent();
        }

        private void MetroToolWindowBase_Closed(object sender, EventArgs e)
        {
            Datos.Micontexto.SaveChanges();
        }
    }
}
