using System;

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
        /// <summary>
        /// Crea un Reporte de Foxpro.
        /// </summary>
        /// <param name="report">Representa la direccion donde esta ubicado el reporte</param>
        /// <param name="queryFile">Representa donde esta ubicado el archivo de consulta del reporte</param>
        /// <param name="idWhere">Representa la clausala where de la consulta</param>
        public static void FoxReport(string report, string queryFile, string idWhere)
        {
            System.Diagnostics.Process p = new System.Diagnostics.Process();
            p.StartInfo.WorkingDirectory = AppDomain.CurrentDomain.BaseDirectory;
            p.StartInfo.FileName = "reporter.exe";
            p.StartInfo.Arguments = report + " " + queryFile + " " + idWhere;
            p.StartInfo.ErrorDialog = true;
            p.StartInfo.UseShellExecute = true;
            p.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Maximized;
            p.Start();
        }

        public static void AbrirWindow(string title, string window, string isModal = "1", string WinParams="x")
        {
            try
            {
              
                Type ventana = Type.GetType("Nomina1._0." + window);
                var datos = WinParams.Split(',');
                MetroWindow nventana = (MetroWindow)Activator.CreateInstance(ventana);
                if (WinParams != "x")
                {
                   nventana = (MetroWindow)Activator.CreateInstance(ventana, datos);
                }
               
                  
                
                nventana.Title = title;
                nventana.ShowInTaskbar = false;
               // nventana.WindowStyle = WindowStyle.ToolWindow;
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
        public static void AbrirReportTra()
        {
             List<trabajador> tra = Datos.Micontexto.trabajador.ToList();
            WinReport report = new WinReport(tra, "C:\\Nomina1.0\\Nomina1.0\\Reports\\RepGeneralTrabajad.rdlc");
            report.ShowDialog();
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

            MessageBox.Show("Datos Guardados!","Guardar",MessageBoxButton.OK,MessageBoxImage.Information);
         
        }
        public static void Actualizado()
        {
            MessageBox.Show("Datos Actualizados!", "Actualiar", MessageBoxButton.OK, MessageBoxImage.Information);
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
        public static MessageBoxResult Msg(string Message, string Title="", string Type = "I",MessageBoxButton Botones=MessageBoxButton.OK)
        {
            MessageBoxImage image = MessageBoxImage.Information;
            if (Type=="E")
            {
                image = MessageBoxImage.Error;
            }
            if (Type == "P")
            {
                image = MessageBoxImage.Question;
            }

            return MessageBox.Show(Message,Title,Botones,image);

        }
        public static bool esFeriado(DateTime date)
        {
            var esFersiempre = Datos.Micontexto.calendario.Where(x => x.tipo == 0).Where(x => x.fecha.Date.Day == date.Date.Day || x.fecha.Date.Month == date.Date.Month).ToList();
            var esFerano = Datos.Micontexto.calendario.Where(x => x.tipo == 1).Where(x => x.fecha.Date == date.Date).ToList();
            if (esFersiempre.Count() > 0)
            {
                return true;
            }

            if (esFerano.Count() > 0)
            {
                return true;
            }
            return false;

        }
    }

    public class PNominaGen
    {
        public int TrabID { get; set; }
        public string TrabNombre { get; set; }
        public string TrabCedula { get; set; }
        public string Departamento { get; set; }
        public string Cargo { get; set; }
        public DateTime? FechaIng { get; set; }
        public decimal? SueldoBase { get; set; }
        public decimal? SueldoDiario { get { return SueldoBase / 30; } set { } }
        public int? IdConcepto { get; set; }
        public string NombreConcepto { get; set; }
        public decimal? Variante { get; set; }
        public int? ConceptoTipo { get; set; }
        public decimal? Valor { get; set; }
        public string Nomina { get; set; }
        public DateTime FD { get; set; }
        public DateTime FH { get; set; }
    }

    public class RTrabajador
    {
        public string nombres { get; set; }
        public string apellidos { get; set; }

    }

    public class Asistencia
    {
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Cedula { get; set; }

        public List<int> Asistencias { get; set; }

      
    }
   
}
