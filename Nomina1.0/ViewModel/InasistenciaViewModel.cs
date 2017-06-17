using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomina1._0.ViewModel
{

    public class DiasAsistA
    {
        public trabajador Trab { get; set; }
        public List<DiasAsistB> Dias { get; set; }
        public string DiasAsis { get; set; }
        public int Totaldes { get; set; }
        public string DiasInasis { get; set; }
        public string DiasDes { get; set; }
        public string DiasFer { get; set; }
        public  int TotalAsis { get; set; }
        public int TotalIna { get; set; }

    }
    public class DiasAsistB
    {
       
        public DateTime Dia { get; set; }
        public bool asist { get; set; }
        public bool diasdes { get; set; }
        public bool diafer { get; set; }
    }
    class InasistenciaViewModel:ViewModelBase
    {
        public RelayCommand ProcInsCommand { get; set; }
        public InasistenciaViewModel()
        {
            ProcInsCommand = new RelayCommand(InitProc);
            Desde = DateTime.Today;
            hasta = DateTime.Today;
            Nominas = Datos.Micontexto.nominatype.ToList();

        }

        private void InitProc(object obj)
        {
            ProcDias(this.Desde, this.hasta, this.Nomina);
        }

        private nominatype _Nomina;
        public nominatype Nomina
        {
            get { return _Nomina; }

            set { _Nomina = value;
                NotifyPropertyChanged();

            }
        }
        private List<nominatype> _Nominas;
        public List<nominatype> Nominas
        {
            get { return _Nominas; }

            set
            {
                _Nominas = value;
                NotifyPropertyChanged();

            }
        }
        private List<DiasAsistA> _DiasAsistencia;
        public List<DiasAsistA> DiasAsistencia
        {
            get { return _DiasAsistencia; }
            set
            {
                _DiasAsistencia = value;
                NotifyPropertyChanged();
            }
        }
        public static List<DiasAsistA> ProcDias(DateTime desde, DateTime hasta,nominatype nomina)
        {
            var procDays = new List<DiasAsistB>();
            var TrabsDays= new List<DiasAsistA>();
            for (DateTime i=desde;i.Date<=hasta.Date;i=i.AddDays(1))
            {
                procDays.Add(new DiasAsistB() {
                    Dia=i,
                    asist=false
                });
            }

            nominaEntities fortrabs = new nominaEntities();
            var trabs = Datos.Micontexto.trabajador.Where(x => x.nominatype.idnomina == nomina.idnomina && x.estatus.idestatus==1);
           
            foreach(var trab in trabs)
            {
                int idtrab = trab.idtrabajador;
                var trabx = new DiasAsistA();
                trabx.Trab = trab;
                trabx.Dias = new List<DiasAsistB>();
                foreach (var day in procDays)
                {
                    var qry = fortrabs.controlasist.Where(x => x.idtrabajador == idtrab && x.date==day.Dia).ToList();
                    int asi;
                    int asid;
                    int diaf;
                    if (day.Dia.DayOfWeek == DayOfWeek.Saturday || day.Dia.DayOfWeek == DayOfWeek.Sunday)
                    {
                       asid = 1;
                        asi = 0;
                    } 
                    else if (Datos.esFeriado(day.Dia))
                    { ///aqui 
                        asid = 1;
                        asi = 0;
                        


                    }
                    else
                    {
                        asid = 0;
                        asi = qry.Count();
                    }

                    trabx.Dias.Add(new DiasAsistB() {
                        Dia = day.Dia,
                        asist = Convert.ToBoolean(asi),
                        diasdes= Convert.ToBoolean(asid)


                    });
                    

                }
                trabx.DiasAsis = string.Join(",", trabx.Dias.Where(x => x.asist == true).Select(x=>x.Dia.Date.ToShortDateString()));
                trabx.DiasDes = string.Join(",", trabx.Dias.Where(x => x.diasdes == true).Select(x => x.Dia.Date.ToShortDateString()));
                trabx.DiasInasis = string.Join(",", trabx.Dias.Where(x => x.asist == false && x.diasdes == false).Select(x => x.Dia.Date.ToShortDateString()));
                trabx.TotalAsis = trabx.Dias.Where(x => x.asist == true).Count();
                trabx.TotalIna= trabx.Dias.Where(x => x.asist == false && x.diasdes == false).Count();
                trabx.Totaldes= trabx.Dias.Where(x => x.diasdes == true).Count();
                TrabsDays.Add(trabx);

            }


           
            return TrabsDays;



        }

        private DateTime _Desde;
        public DateTime Desde
        {
            get { return _Desde; }

            set
            {
                _Desde = value;
                NotifyPropertyChanged();

            }
        }
        private DateTime _hasta;
        public DateTime hasta
        {
            get { return _hasta; }

            set
            {
                if (value.Date>DateTime.Today)
                {
                    Datos.Msg("La fecha no puede ser mayor a la actual", "Error", "E");
                    return;
                }
                _hasta = value;
                NotifyPropertyChanged();

            }
        }

    }
}
