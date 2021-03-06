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
using MahApps.Metro.Controls;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinModifyPrenom.xaml
    /// </summary>
    public partial class WinModifyPrenom 
    {
        public WinModifyPrenom()
        {
            InitializeComponent();
            WindowStyle = WindowStyle.ToolWindow;

            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            Title = "Editar Campos en general";
            label.Content = "Editar campos en general";
            var busca = Datos.Micontexto.campotra.Local.Where(x => x.idtrabajador == Datos.Micontexto.trabajador.FirstOrDefault().idtrabajador).ToList();
            dataGrid_Copy.DataContext = busca;

        }

        public WinModifyPrenom(int Trab,string TrabajadorNom)
        {
            object busca;
            InitializeComponent();
            Owner = Datos._PrincipalWindow;
            ShowInTaskbar = false;
            WindowStyle = WindowStyle.ToolWindow;
            WindowStartupLocation = WindowStartupLocation.CenterScreen;
          
            Title = "Editar Campos";
            label.Content = TrabajadorNom;
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            Title = "Editar Campos";
            label.Content = TrabajadorNom;
            busca = Datos.Micontexto.campotra.Where(x => x.idtrabajador == Trab).ToList();
            dataGrid_Copy.DataContext = busca;

        }

        private void MetroWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Datos.Micontexto.SaveChanges();
        }
    }
}
