using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{
    class CamposGenViemodel
    {
        public List<campos> campos { get { return Datos.Micontexto.campos.ToList(); } }
        public RelayCommand CambiarCamposCommand { get; set; }
        public CamposGenViemodel()

        {
          
            CambiarCamposCommand = new RelayCommand(CambiarCampos);
          
        }
        private decimal _Valor;
        public decimal Valor
        {
            get { return _Valor; }
            set { _Valor = value; }
        }

        void CambiarCampos(object objeto)
        {
           // try
           // {
            var values = (object[])objeto;
            var val1 = values[1];
            var val0= Convert.ToDecimal( values[0].ToString());
            var camposa = Datos.Micontexto.campotra.Where(a => a.nombrecampo ==val1).ToList();
            camposa.ForEach(a => a.valor=val0);
            Datos.Micontexto.SaveChanges();
          
            Datos.Msg("Debe recalcular la nomina para agregar los cambios", "Importante");
          //  }catch(Exception)
           // {
            //    Datos.Msg("Error al Actualizar los Campos, Veifique los datos", "Error", "E");
           // }
        }
    }
}
