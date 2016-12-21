using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MahApps.Metro.Controls;
using Nomina1._0.ViewModel;
using System.Reflection;

namespace Nomina1._0
{
   public class MetroToolWindowBase:MetroWindow
    {
        public string Query { get; set; }
        public string ObjectType { get;  set; }

        public MetroToolWindowBase()
        {
            Activated += new EventHandler(Activar );
            Closed += new EventHandler(Closedx);
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

        private void Closedx(object sender, EventArgs e)
        {
            Datos.ResetAll();
        }

        private void Activar(object sender, EventArgs e)
        {
            try
            {
                Assembly asm = Assembly.GetEntryAssembly();
                Type type = asm.GetType("Nomina1._0.ViewModel." + ObjectType);

                PrincipalViewModel.ObjetoActual = Convert.ChangeType(DataContext, type);
            }catch(Exception)
            {

            }
            Datos.WindowActual = this;
            Datos.SelectQuery = Query;
            Datos.ObjectType = ObjectType;
        }
    }
}
