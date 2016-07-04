using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nomina1._0.ViewModel;

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

        public string LUNESDELINTERVALO(string idtra)
        {
            var fechadesde = PrenominaViewModel.FechaD;
            var fechahasta = PrenominaViewModel.FechaA;
            var canlunes = 0;
            for(DateTime i=fechadesde; i <= fechahasta; i=i.AddDays(1))
            {
                if (i.DayOfWeek==DayOfWeek.Monday)
                {
                    canlunes += 1;
                }
             
            }
            return canlunes.ToString();
        }
        public string SUELDOINTEGRAL(string idtra)
        {
            decimal acumasig=0;
            decimal acumdeduc = 0;
            int idx = int.Parse(idtra);
            var trab = newenti.trabajador.FirstOrDefault(x => x.idtrabajador==idx);
            var conceptos = trab.conceptos.Split(',');
            var q = (from con in conceptos
                     join names in newenti.conceptos
                     on con equals names.idconcepto.ToString()
                     select new xconcepto
                     {
                         codigo = con,
                         nombre = names.nombre,
                         formula = names.Valor,
                         tipo=names.tipo

                     }) as IEnumerable<xconcepto>;
            var asigs = q.Where(x => x.tipo ==1).Select(x=>x.formula);
            foreach (var asig in asigs)
            {
                if (asig.Contains("SUELDOINTEGRAL"))
                {
                    acumasig += 0;
                }else
                { 
                acumasig += PrenominaViewModel.LeerConcepto(asig,int.Parse(idtra));
                }
            }
            var deducs = q.Where(x => x.tipo == 2).Select(x => x.formula);
            foreach (var deduc in deducs)
            {
                acumdeduc += PrenominaViewModel.LeerConcepto(deduc, int.Parse(idtra));

            }
            return (acumasig - acumdeduc).ToString();
        }
    }
}
