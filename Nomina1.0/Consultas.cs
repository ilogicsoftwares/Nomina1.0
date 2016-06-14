using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Documents;
using Nomina1._0.ViewModel;

namespace Nomina1._0
{
    class Consultas
    {


        #region ConsultasGenerales
        public static object[] consulta()
        {

            object[] qry = (from trab in Datos.Micontexto.trabajador.ToList()
                            select new Consultatrabajador
                            {
                                Codigo = trab.idtrabajador,
                                Cedula = trab.cedula,
                                Nombre = trab.nombres.Trim() + " " + trab.apellidos.Trim(),
                                Departamento = trab.departamentos != null ? trab.departamentos.Descripcion : "",
                                Cargo = trab.cargo != null ? trab.cargo.Nombre.TrimEnd() : "",
                                Sueldo = trab.Sueldo != null ? trab.Sueldo.Value.ToString("N") : ""
                            }).ToArray();
            ;

            return qry;

        }

        public class Consultatrabajador

         {
            public int Codigo { get; set; }
            public string Cedula { get; set; }
            public string Nombre { get; set; }
            public string Departamento { get; set; }
            public string Cargo { get; set; }
            public string Sueldo { get; set; }
           
   
         



        }


        #endregion
    }
}
