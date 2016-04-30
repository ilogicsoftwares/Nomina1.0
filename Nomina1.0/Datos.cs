using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Collections;
using System.Windows;
using System.Windows.Controls;

namespace Nomina1._0
{
    public class Datos
    {
        public static nominaEntities Micontexto= new nominaEntities();
 
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
      
       
        public static void AbrirWindow(string window,int isModal=1)
        {
            Type ventana = Type.GetType("Nomina1._0."+window);
            Window nventana = (Window)Activator.CreateInstance(ventana);
            if (isModal == 1)
            {
                nventana.ShowDialog();
            }
            else
            {
                nventana.Show();
            }
        }
        public static void Cerrarapi()
        {
            App.Current.Shutdown();
        }

    
    }

    
}
