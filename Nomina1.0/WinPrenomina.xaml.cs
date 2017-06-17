using MahApps.Metro.Controls;
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

namespace Nomina1._0
{
    /// <summary>
    /// Lógica de interacción para WinPrenomina.xaml
    /// </summary>
    public partial class WinPrenomina 
    {
        PrenominaViewModel nomina;
        public WinPrenomina(object Prenomina)
        {
            nomina = Prenomina as PrenominaViewModel;
            WindowStyle = WindowStyle.ToolWindow;
            
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            InitializeComponent();
            DataContext = nomina;
        }
        public WinPrenomina()
        {
            InitializeComponent();
            button_Copy.Content = "Ver";
        }
        private void button_Copy_Click(object sender, RoutedEventArgs e)
        {

            if (button_Copy.Content.ToString() != "Ver")
            {
               var va= MessageBox.Show("Desea generar la nomina, los Datos seran agregados al Historial", "Generar", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (va == MessageBoxResult.Yes)
                {
                    nomina.GenerarNomina();
                }
                else
                {
                    return;
                }

            }

            nomina.GenerarRecibos();   
            if (checkBox.IsChecked==true)
            {
                nomina.GenerarResumen();
            }
            if (checkBox_Copy.IsChecked==true)
            {
                nomina.CrearTxt(nomina.fechavalor,nomina.txtdivision);
            }
        }

        private void CommandNuevo_Copy1_Click(object sender, RoutedEventArgs e)
        {
          /*  var dt = from trabs in nomina.NominaActual
                     select new PNominaGen
                     {
                         TrabID = trabs.trabajador.idtrabajador,
                         TrabNombre = trabs.trabajador.nombres.Trim() + " " + trabs.trabajador.apellidos.Trim(),
                         TrabCedula = trabs.trabajador.cedula,
                         Departamento = trabs.trabajador.departamentos.Descripcion,
                         Cargo = trabs.trabajador.cargo.Nombre,
                         FechaIng = trabs.trabajador.Fechaing,
                         SueldoBase = trabs.trabajador.Sueldo,
                         SueldoDiario = 1,
                         IdConcepto = trabs.idconcepto,
                         NombreConcepto = trabs.nombrecon,
                         Variante = trabs.valorvar,
                         ConceptoTipo = trabs.tipoconcepto,
                         Valor = trabs.valorconcepto,
                         Nomina = trabs.nominatype.descripcion,
                         FD = PrenominaViewModel.FechaD,
                         FH = PrenominaViewModel.FechaA


                     };

            WinReport report = new WinReport(dt.ToList(), "C:\\Nomina1.0\\Nomina1.0\\Reports\\ReciboPago.rdlc");
            report.ShowDialog();*/
            Datos.FoxReport("recibos", "prerecibos.txt", "WHERE_idnominatype=" + nomina.SelectedNomina.idnomina +"_ORDER_BY_PRENOMINA.IDPRENOMINA,PRENOMINA.IDTRABAJADOR");
        }

        private void CommandNuevo_Click(object sender, RoutedEventArgs e)
        {

            if (listBox.SelectedValue == null)
            { return; }
            dynamic selecttrab = listBox.SelectedItem;
            WinModifyPrenom modify = new WinModifyPrenom(int.Parse(listBox.SelectedValue.ToString()), selecttrab.Nombre);

            modify.ShowDialog();

        }

        private void listBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void listBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (listBox.SelectedValue == null)
            { return; }
            dynamic selecttrab = listBox.SelectedItem;
            WinModifyPrenom modify = new WinModifyPrenom(int.Parse(listBox.SelectedValue.ToString()),selecttrab.Nombre);

            modify.ShowDialog();
        }

        private void MetroWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
           
        }

        private void MetroWindow_Closed(object sender, EventArgs e)
        {
            
        }

        private void CommandNuevo_Copy_Click(object sender, RoutedEventArgs e)
        {
            Datos.AbrirWindow("Cambiar Campos en General", "WinCambioCampos", "1");
           
         

        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
            nomina.GenerarPrenomina(nomina.SelectedNomina);
           
        }

        private void textBox2_TextChanged(object sender, TextChangedEventArgs e)
        {
           
            var comparision = StringComparison.InvariantCultureIgnoreCase;
            string myString = textBox2.Text;
            List<dynamic> index = listBox.Items.SourceCollection.OfType<dynamic>().Where(x=>x.Nombre.StartsWith(myString,comparision)).ToList();
            if (index.Count > 0) { 
            listBox.SelectedItem= index.First();
               
           // var listBoxItem = (ListBoxItem)listBox.ItemContainerGenerator.ContainerFromItem(listBox.SelectedItem);
                listBox.ScrollIntoView(listBox.SelectedItem);
            //    listBox.UpdateLayout();
            
            }
            // listBox.SelectedIndex = index;
        }
    }
}
