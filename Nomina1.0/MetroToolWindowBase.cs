using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MahApps.Metro.Controls;
using System.Windows;
using System.Reflection;
using System.Data.Entity;

namespace Nomina1._0
{
    public class MetroToolWindowBase:MetroWindow
    {
        public bool IsForSave;
        public static MetroToolWindowBase ActiveToolwindow { get; set; }
        public string SelectQuery { get; set; }
        public object Data { get; set; }
        public icontabilidadEntities bd; 
        public dynamic ObjetoActual { get ; set; }
        private string _Nexus; 
        public string Nexus { get { return _Nexus; } set { _Nexus = value;} }

        public void Nuevo()
        {
            bd = new icontabilidadEntities();
            IsForSave = true;
            var asem = Assembly.GetEntryAssembly();
            var x = asem.GetType("IlogicContabilidad."+Nexus);
            Data = Activator.CreateInstance(x);
            AsignarObjeto (Data);
        }
        public void AsignarObjeto(object objeto)
        {
            DataContext = objeto;
            ObjetoActual = (dynamic)DataContext;
        }

       
        public MetroToolWindowBase()
        {
            Activated += new EventHandler(HacerActivo);
            Closed+= new EventHandler(Cerrar);
            WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
            WindowStyle = System.Windows.WindowStyle.ToolWindow;
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            // ResizeMode = System.Windows.ResizeMode.CanResizeWithGrip;
            ResizeMode = System.Windows.ResizeMode.NoResize;
            ShowMinButton = false;
            ShowMaxRestoreButton = false;
           // this.Topmost = true;
            ShowInTaskbar = false;

            
        }

        private void Cerrar(object sender, EventArgs e)
        {
          ActiveToolwindow = null;
        }

        private void HacerActivo(object sender, EventArgs e)
        {
            ActiveToolwindow = this;
        }

        public void GuardarDatos()
        {
            
            try {
                if (IsForSave)
                {
                    bd.Set(Data.GetType()).Add(Data);
                    bd.SaveChanges();
                   
                    UpdateLayout();
                    App.Extensions.MsgGuardar(Messagetype.Guardar);
                    ActiveToolwindow.Activate();

                }else
                {
                    

                    bd.SaveChanges();
                    App.Extensions.MsgGuardar(Messagetype.Editar);
                    ActiveToolwindow.Activate();
                    UpdateLayout();

                }
                Nuevo();
               
            }
            catch(Exception x)
            {
                MessageBox.Show("Error al Guardar:" + x.Message); 
            }
        }
        public void EliminarDatos()
        {
            if (App.Extensions.MsgGuardar(Messagetype.Eliminar)==MessageBoxResult.Yes)
            {
                try
                {
                    // var itemToremove = bd.Set(Data.GetType()).Find(id);
                    bd.Set(Data.GetType()).Remove(ObjetoActual);
                    bd.SaveChanges();
                    MessageBox.Show("El registro se ha eliminado", "Eliminado", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch(Exception)
                {
                    MessageBox.Show("No se pudo eliminar el registro", "Eliminado", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                Nuevo();
              
            }
        }
        public virtual void Extraguardar()
        {
            
        }
        public void Filtro(int id)
        {
            IEnumerable<dynamic> z = (bd.GetType().GetProperty(Nexus).GetValue(bd, null) as IEnumerable<dynamic>);
            var y = z.First(x=>x.id==id);
            
            AsignarObjeto(y);
            this.UpdateLayout();
        }
    }
}
