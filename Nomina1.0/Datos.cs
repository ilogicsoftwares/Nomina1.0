using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Collections;
using System.Windows;
using System.Windows.Controls;
using MahApps.Metro.Controls;


namespace Nomina1._0
{
    public class Datos
    {
        public static nominaEntities Micontexto= new nominaEntities();
        public static Window _PrincipalWindow;
        public static bool ValidarDatos(Grid container)
        {
            bool resultado=true;
            foreach (var c in LogicalTreeHelper.GetChildren(container))
            {
                if (c is TextBox)
                {
                    var control = c as TextBox;
                    if (control.Text == string.Empty  )
                    {
                        resultado = false;
                        goto salida;
                        
                    }
                 

                }
                if (c is ComboBox)
                {
                    var control = c as ComboBox;
                    if (control.SelectedItem == null || control.SelectedValuePath==null)
                    {

                        resultado = false;
                        goto salida;

                    }

                }
                if (c is PasswordBox)
                {
                    var control = c as PasswordBox;
                    if (control.Password == "")
                    {
                        resultado = false;
                        goto salida;

                    }


                }

            }
            salida:
            if (resultado == false) {
                MessageBox.Show("Complete los Datos", "Error Al ingresar");
            }

            return resultado;

        }


        public static void AbrirWindow(string window, string isModal = "1")
        {
            try
            {

                Type ventana = Type.GetType("Nomina1._0." + window);
                MetroWindow nventana = (MetroWindow)Activator.CreateInstance(ventana);
                nventana.ShowInTaskbar = false;
                nventana.WindowStyle = WindowStyle.ToolWindow;
                nventana.SetResourceReference(MetroWindow.GlowBrushProperty,"AccentColorBrush");
                nventana.ResizeMode = ResizeMode.CanResizeWithGrip;
                if (window=="PrincipalWindow")
                {
                    nventana.ShowInTaskbar = true;
                    nventana.WindowStyle = WindowStyle.ThreeDBorderWindow;
                    _PrincipalWindow = nventana;
                    
                }
                else
                {
                    nventana.Owner = _PrincipalWindow;
                }
                if (isModal == "1")
                {
                  
                    nventana.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                    
                    nventana.ShowDialog();
                   
                   
                }
                else
                {
                 
                    nventana.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                    nventana.Show();
                   
                }
            }catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());

            }
            }
        public static void Cerrarapi()
        {
            Application.Current.Shutdown();
        }

    
    }

    
}
