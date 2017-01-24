using MahApps.Metro.Controls;
using System.Linq;
using System.Linq.Dynamic;
using System.Windows.Controls;
using Nomina1._0.ViewModel;
using System;
using System.Collections.Generic;
using System.Windows;


namespace Nomina1._0
    
{
    /// <summary>
    /// Lógica de interacción para WinBusqueda.xaml
    /// </summary>
    
    public partial class WinBusqueda 
    {

        dynamic objetoActual;
   
        IEnumerable<dynamic> ConsultaInicial;
        public WinBusqueda()
        {
            InitializeComponent();

        }
        public WinBusqueda(string Titulo,string objetotype,string select)
        {
           
            InitializeComponent();

            this.Title = Titulo;
          
            ShowInTaskbar = false;
            WindowStyle = WindowStyle.ToolWindow;
            SetResourceReference(MetroWindow.GlowBrushProperty, "AccentColorBrush");
            ResizeMode = ResizeMode.CanResizeWithGrip;
            consultainicial(objetotype,
               select);
           

        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           
                objetoActual = dataGrid.SelectedValue;
            


        }

        private void dataGrid_MouseDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //  Datos.AFuncion(PrincipalViewModel.ObjetoActual, "Filtro",selectedObject.GetType().GetProperty("Id").GetValue(selectedObject).ToString());
            try { 
            var _id = objetoActual.ID;
            if (_id != 0)
            {
                Datos.AFuncion(PrincipalViewModel.ObjetoActual, "Filtro", _id.ToString());
                Close();
            }
            }
            catch
            {

            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (textBox.Text==string.Empty)
            {

                dataGrid.DataContext = ConsultaInicial.ToArray();
                count.Content = ConsultaInicial.ToArray().Count().ToString();
            }
            else
            {
                filtrarpor(comboBox.Text, textBox.Text);
            }
          
        
           

        }


        private void consultainicial(string objeto,string select)
        {
            IEnumerable<dynamic> z = (Datos.Micontexto.GetType().GetProperty(objeto).GetValue(Datos.Micontexto, null) as IEnumerable<dynamic>);
            IEnumerable<dynamic> y = z.Select(select) as IEnumerable<dynamic>;
          
            ConsultaInicial = y;
           
            dataGrid.DataContext = y.ToArray();
            
            count.Content = y.ToArray().Count().ToString();
            object[] campos= y.ToArray();
            
            comboBox.ItemsSource=campos[0].GetType().GetProperties()
                .Select(x => x.Name);
           
           
        }

        private void filtrarpor(string Campo,object valor)
        {
            if (Campo==string.Empty ) { MessageBox.Show("Selecciones un Campo para Filtrar"); return; }
            if (valor.ToString()==string.Empty) { dataGrid.DataContext = ConsultaInicial.ToArray(); }
            try
            {
                IEnumerable<dynamic> x = ConsultaInicial.Where(Campo + ".Contains(@0)", valor) as IEnumerable<dynamic>;
                dataGrid.DataContext = x.ToArray();
                count.Content = x.ToArray().Count().ToString();
            }
            catch (Exception ex)
            {
                valor = Int32.Parse(valor.ToString());
                IEnumerable<dynamic> x = ConsultaInicial.Where(Campo + "==@0", valor) as IEnumerable<dynamic>;
                dataGrid.DataContext = x.ToArray();
                count.Content = x.ToArray().Count().ToString();
            }


       
        }



    }
}
