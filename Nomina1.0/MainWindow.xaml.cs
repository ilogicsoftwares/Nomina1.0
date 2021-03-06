﻿using System;
using System.Windows;
using MahApps.Metro.Controls;
using Nomina1._0.ViewModel;
using System.Windows.Markup;
using System.Globalization;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>

    public partial class MainWindow:MetroWindow 
    {
       
        public LogingViewModel initUser = new LogingViewModel();
        public MainWindow()
        {

            //cambia la cultura en todo el proyecto a la cultura actual
            FrameworkElement.LanguageProperty.OverrideMetadata(
             typeof(FrameworkElement),
            new FrameworkPropertyMetadata(XmlLanguage.GetLanguage(CultureInfo.CurrentCulture.IetfLanguageTag)));
            ///////
            this.WindowStyle = WindowStyle.ThreeDBorderWindow;
            InitializeComponent();
            DataContext = initUser;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
         
                if (passwordBox.Password.Trim() == comboBox.SelectedValuePath.ToString().Trim() && passwordBox.Password.Trim()!=string.Empty)
                {
                    LogingViewModel.UsuarioActivo = initUser.UsuarioActual;
                    Datos.AbrirWindow("Ilogic Softwares Nomina -"+" Usuario: " + LogingViewModel.UsuarioActivo.descripcion,"PrincipalWindow","0");
                    Close();
                    Mensaje.Content = "";
                  
                  
                   
                }else
                {
                    Mensaje.Content=("Clave Invalida...");
                }
            

        }
    }
}
