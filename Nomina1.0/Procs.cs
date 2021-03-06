﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nomina1._0.ViewModel;
using System.ComponentModel.DataAnnotations;

namespace Nomina1._0
{
   public class Procs
    { 
        nominaEntities newenti = new nominaEntities();
        [Display (Description ="Calcula el sueldo base")]
        public string SUELDOBASE(string idtra)
        {
            var idx=int.Parse(idtra);
            var r = newenti.trabajador.Where(x => x.idtrabajador == idx).Select(x=>x.Sueldo).SingleOrDefault().ToString();
            return r;
        }
        [Display(Description = "Calcula la cantidad de lunes en intervalo de nomina")]
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
        [Display(Description = "Calcula el sueldo integral")]
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
        [Display(Description = "Calcula los dias laborados por Control de Asistencia")]
        public string DIASCONTROLASIST(string idtra)
        {
            var idx = int.Parse(idtra);
            var fechadesde = PrenominaViewModel.FechaD;
            var fechahasta = PrenominaViewModel.FechaA;

           var dias =newenti.controlasist.Where(x => x.idtrabajador == idx).Where(x => x.date >= fechadesde && x.date <= fechahasta).Where(x => x.Dia == 1).Count();
            return dias.ToString();
        }
        [Display(Description = "Calcula la cantidad de Domingos en intervalo de nomina")]
        public string DOMINGOSDEINTERVALO(string idtra)
        {
            var fechadesde = PrenominaViewModel.FechaD;
            var fechahasta = PrenominaViewModel.FechaA;
            var canlunes = 0;
            for (DateTime i = fechadesde; i <= fechahasta; i = i.AddDays(1))
            {
                if (i.DayOfWeek == DayOfWeek.Sunday)
                {
                    canlunes += 1;
                }

            }
            return canlunes.ToString();
        }
        [Display(Description = "Calcula la cantidad de Sabados en intervalo de nomina")]
        public string SABADOSDEINTERVALO(string idtra)
        {
            var fechadesde = PrenominaViewModel.FechaD;
            var fechahasta = PrenominaViewModel.FechaA;
            var canlunes = 0;
            for (DateTime i = fechadesde; i <= fechahasta; i = i.AddDays(1))
            {
                if (i.DayOfWeek == DayOfWeek.Saturday)
                {
                    canlunes += 1;
                }

            }
            return canlunes.ToString();
        }
        [Display(Description = "Calcula la cantidad de Dias en intervalo de nomina")]
        public string DIASENINTERVALO(string idtra)
        {
            var fechadesde = PrenominaViewModel.FechaD;
            var fechahasta = PrenominaViewModel.FechaA;
            var canlunes = (fechahasta-fechadesde).TotalDays ;
            
            return (Math.Abs(canlunes) +1).ToString();
        }
        [Display(Description = "Calcula la cantidad de Sabados y Domingos en intervalo de nomina")]
        public string SABADOSYDOMDEINTERVALO(string idtra)
        {
          var result=  int.Parse (SABADOSDEINTERVALO(idtra)) + int.Parse (DOMINGOSDEINTERVALO(idtra));
            return result.ToString();
        }
        [Display(Description = "Calcula la cantidad de Dias que faltan para el final del periodo")]
        public string DIASHASTA(string idtra)
        {
            var fechadesde = DateTime.Today;
            var fechahasta = PrenominaViewModel.FechaA;
            var canlunes = (fechahasta - fechadesde).TotalDays;
            
            return (Math.Abs(canlunes) + 1).ToString();
        }
    }
}
