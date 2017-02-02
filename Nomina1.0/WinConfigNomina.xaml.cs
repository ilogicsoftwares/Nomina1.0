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
    /// Interaction logic for WinConfigNomina.xaml
    /// </summary>
    public partial class WinConfigNomina
    {
       /// <summary>
       /// El trabajador,1 si es nomina normal;2 si es nomina secundaria
       /// </summary>
       /// <param name="trabajador"></param>
       /// <param name="Tiponomina"></param>
        public WinConfigNomina(TrabajadorViewModel trabajador ,int Tiponomina)
        {
          
            ObjectType = "TrabajadorViewModel";
            Query = "new()";
            InitializeComponent();
            DataContext = trabajador;
            
            if (Tiponomina == 1)
            {
                Title = trabajador.TrabajadorActual.nominatype.descripcion;
                listBox.DataContext = trabajador.ConceptosViewList;
                listBox_Copy.DataContext = trabajador.CamposViewList;
                BtnGroup.DataContext= trabajador.ConceptosViewList;

            }
            else
            {
                Title = trabajador.TrabajadorActual.nominatype1.descripcion;
                listBox.DataContext = trabajador.BonosConceptosViewList;
                listBox_Copy.DataContext = trabajador.CamposViewList;
                BtnGroup.DataContext = trabajador.BonosConceptosViewList;
            }

        }
    }
}
