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

namespace Nomina1._0
{
    /// <summary>
    /// Interaction logic for WinAsigNomina.xaml
    /// </summary>
    public partial class WinAsigNomina 
    {
        public WinAsigNomina()
        {
            InitializeComponent();
        }

        private void checkBox_Checked(object sender, RoutedEventArgs e)
        {
            listBox.SelectAll();
        }

        private void checkBox_Copy_Checked(object sender, RoutedEventArgs e)
        {
            listBox_Copy.SelectAll();
        }

        private void textBox2_TextChanged(object sender, TextChangedEventArgs e)
        {
            var comparision = StringComparison.InvariantCultureIgnoreCase;
            string myString = textBox2.Text;
            List<dynamic> index = listBox.Items.SourceCollection.OfType<dynamic>().Where(x => x.Nombre.StartsWith(myString, comparision)).ToList();
            if (index.Count > 0)
            {
                listBox.SelectedItem = index.First();

                // var listBoxItem = (ListBoxItem)listBox.ItemContainerGenerator.ContainerFromItem(listBox.SelectedItem);
                listBox.ScrollIntoView(listBox.SelectedItem);
                //    listBox.UpdateLayout();

            }
        }
    }
}
