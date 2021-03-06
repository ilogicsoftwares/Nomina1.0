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
using System.Reflection;
using System.ComponentModel.DataAnnotations;

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinProcedures.xaml
    /// </summary>
    public partial class WinProcedures 
    {
        public WinProcedures()
        {
            Procs procedures = new Procs();
            InitializeComponent();
            var proce = procedures.GetType().GetMethods()
                .Where(x => x.Module.Name == "Nomina1.0.exe")
                .Select(x => new { Nombre = x.Name, Descripcion=((DisplayAttribute)x.GetCustomAttributes(typeof(DisplayAttribute),false).First()).Description}).ToArray();
                
            dataGrid.DataContext = proce;
        }
    }
}
// .Where(x => x.IsSecurityCritical == true)    
// Descripcion=(((DisplayAttribute)x.GetCustomAttribute(typeof(DisplayAttribute),true)).Name)