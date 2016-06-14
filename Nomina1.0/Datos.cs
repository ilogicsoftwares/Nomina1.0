﻿using System;

using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Collections;
using System.Windows;
using System.Windows.Controls;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Controls;
using System.Reflection;

namespace Nomina1._0
{
    public class Datos
    {
        public static nominaEntities Micontexto= new nominaEntities();
     
        public static MetroWindow _PrincipalWindow;
        public static string ObjectType=string.Empty;
        public static string SelectQuery=string.Empty;
        public static MetroWindow WindowActual;
        public static bool HayNuevo=false;
       
       
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
        public static void ResetAll()
        {
            ObjectType = string.Empty;
            SelectQuery =string.Empty;
            WindowActual = null;
        }


        public static void AbrirWindow(string title, string window, string isModal = "1")
        {
            try
            {

                Type ventana = Type.GetType("Nomina1._0." + window);
                MetroWindow nventana = (MetroWindow)Activator.CreateInstance(ventana);
                nventana.Title = title;
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

        public static void NuevoObjeto(string objeto)
        {
            Type nobjeto = Type.GetType("Nomina1._0." + objeto);
            object newobject = (object)Activator.CreateInstance(nobjeto);
           
            WindowActual.DataContext =newobject;
            
        }
        public static void EjecutarMetodo(object window,string metodo)
        {
            if (window != null)
            {
                Type type = (window.GetType());

                MethodInfo method = type.GetMethod(metodo);
                method.Invoke(window, null);
            }
            


        }
        public static void Guardado()
        {
            WindowActual.Topmost = true;
            WindowActual.ShowMessageAsync("Guardado","Se han Guardado los Datos con Exito!",MessageDialogStyle.Affirmative);
         
        }
        public static void Actualizado()
        {
            _PrincipalWindow.ShowMessageAsync("Actualizado", "Se han Actualizado los Datos!", MessageDialogStyle.Affirmative);
        }

        public static void EjecutarFuncion(string accion, string parametros)
        {
            try
            {

                object[] param = null;
                if (parametros != null)
                {

                    param = parametros.Split(',');

                }
                Type type = typeof(Datos);
                object instance = Activator.CreateInstance(type);
                MethodInfo method = type.GetMethod(accion);
                method.Invoke(instance, param);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Inesperado: " + ex.ToString());
            }
        }

        public static void AFuncion(object objeto,string accion, string parametros)
        {
            try
            {

                object[] param = null;
                if (parametros != null)
                {

                    param = parametros.Split(',');

                }
               
                MethodInfo method = objeto.GetType().GetMethod(accion);
                method.Invoke(objeto, param);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Inesperado: " + ex.ToString());
            }
        }
    }

    
}
