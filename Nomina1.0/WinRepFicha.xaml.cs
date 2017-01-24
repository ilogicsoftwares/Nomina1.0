using System;
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
using Nomina1._0.ViewModel;
using System.Linq.Dynamic;

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinRepFicha.xaml
    /// </summary>
    public partial class WinRepFicha
    {
        public List<trabajador> DataForReport { get; set; }
        public string ReportName { get; set; }
        public WinRepFicha()
        {
            ReportName = "FichaTrabajador";
            InitializeComponent();
            
        }
        public WinRepFicha(string reporte)
        {

            ReportName = reporte;
            InitializeComponent();
           
        }

        private void cedula_LostFocus(object sender, RoutedEventArgs e)
        {
            trabajad.Buscar(cedula.Text);
        }

        private void MetroToolWindowBase_Activated(object sender, EventArgs e)
        {
            PrincipalViewModel.ObjetoActual = (TrabajadorViewModel)DataContext;
            Datos.WindowActual = this;
            Datos.ObjectType = "trabajador";
            Datos.SelectQuery = "new(idtrabajador as ID, nombres as Nombres, apellidos as Apellidos, cedula as Cedula,nominatype.descripcion as Nomina, departamentos.Descripcion as Departamento, cargo.Nombre as Cargo, Sueldo)";
        }

        private void MetroToolWindowBase_Closed(object sender, EventArgs e)
        {
            Datos.ResetAll();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            
            if (trabajad.TrabajadorActual.idtrabajador!=null && trabajad.TrabajadorActual.idtrabajador != 0)
            {
                DataForReport = new List<trabajador>();
                DataForReport.Add(trabajad.TrabajadorActual);
            }else
            {
                DataForReport = Datos.Micontexto.trabajador.ToList();
            }
           
          
            var dta = DataForReport.Select("new(nombres,apellidos,cargo.nombre as cargo,cedula,sueldo,cedula,fechanac,lugarnac,nacionalidad.descripcion as nacionalidad,direccion,telefonocel,telefonolocal,edocivil,nhijos,sexo,gradointruc.grado as gradointruc,nombrecontacto,telefonocontacto,nominatype.descripcion as nominatype,departamentos.descripcion as departamentos,estatus.descripcion as estatus)");
            WinReport nuevoreport = new WinReport(dta, "C:\\Nomina1.0\\Nomina1.0\\Reports\\"+ReportName+".rdlc");
            nuevoreport.Owner=this;
            nuevoreport.ShowDialog();
        }

        private void cedula_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
