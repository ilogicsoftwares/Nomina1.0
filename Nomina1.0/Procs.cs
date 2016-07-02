using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0
{
    class Procs
    {
        nominaEntities newenti = new nominaEntities();
        public string SUELDOBASE(string idtra)
        {
            var idx=int.Parse(idtra);
            var r = newenti.trabajador.Where(x => x.idtrabajador == idx).Select(x=>x.Sueldo).SingleOrDefault().ToString();
            return r;
        }
    }
}
