using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Objects;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Threading;

namespace Nomina1._0.ViewModel
{
    class ControlAsistViewModel : INotifyPropertyChanged
    {

       
        public enum EstatusAsist
        {
            ENTRADA, SALIDA
        }
        public enum ColorAsist
        {
            Green, Red
        }
        public RelayCommand CheckCommand { get; set; }
        DispatcherTimer Timer1 { get; set; }
        public ControlAsistViewModel()
        {
            this.Identificator = Identificator;
            CheckCommand = new RelayCommand(TrabajadorFinder);
            Saludo = "Listo Para Checking...";
            this.Color = "Black";
            Timer1 = new DispatcherTimer();
            Timer1.Tick += EjecuteTime;
            Timer1.Interval = new TimeSpan(0, 0, 0,0,200);
            Timer1.Start();
            Configuracion = Datos.Micontexto.controlconfig.FirstOrDefault();
            
            
        }

        private void EjecuteTime(object sender, EventArgs e)
        {
          Tempo = DateTime.Now.ToString("hh:mm tt");
        }

        private string _Nomtrabajador;
        public string Nomtrabajador
        {
            get { return _Nomtrabajador; }
            set
            {
                _Nomtrabajador = value;
                NotifyPropertyChanged();
            }
        }

        private trabajador _trabajador;
        public trabajador trabajador
        {
            get { return _trabajador; }
            set
            {
                _trabajador = value;
                if (value == null)
                {
                    Foto = string.Empty;
                }
                else
                { Foto = trabajador.dirfoto; }
                NotifyPropertyChanged();
            }
        }
        private controlconfig _Configuracion;
        public controlconfig Configuracion
        {
            get { return _Configuracion; }
            set
            {
                _Configuracion = value;
                NotifyPropertyChanged();

            }
        }
        private string _Identificator;
        public string Identificator
        {
            get { return _Identificator; }
            set
            {
                _Identificator = value;
                NotifyPropertyChanged();

            }
        }
        private string _ErrorMsg;
        public string ErrorMsg
        {
            get { return _ErrorMsg; }
            set
            {
                _ErrorMsg = value;
                NotifyPropertyChanged();

            }
        }
        private string _Saludo;
        public string Saludo
        {
            get { return _Saludo; }
            set
            {
                _Saludo = value;
                NotifyPropertyChanged();

            }
        }
        private string _Tempo;
        public string Tempo
        {
            get { return _Tempo; }
            set
            {
                _Tempo = value;
                NotifyPropertyChanged();

            }
        }
        private string _Foto;
        public string Foto
        {
            get { return _Foto; }
            set
            {
                _Foto = value;
                NotifyPropertyChanged();

            }
        }



        private string _Color;
        public string Color
        {
            get { return _Color; }
            set
            {
                _Color = value;
                NotifyPropertyChanged();
            }
        }
        private controlasist _Checkcontrol;
        public controlasist Checkcontrol
        {
            get { return _Checkcontrol; }
            set
            {
                _Checkcontrol = value;
                NotifyPropertyChanged();
            }
        }

        public void PasarDatos()
        {
            var camptra = Datos.Micontexto.campotra.Where(x => x.idtrabajador == trabajador.idtrabajador);
            var Varhoras = Configuracion.WHorasD;
            var ValHoras = Checkcontrol.HorasD;
            var VarDia = Configuracion.WDia;
            var ValDia = Checkcontrol.Dia;
            var changeValHora = camptra.Where(x => x.nombrecampo == Varhoras).First();
            changeValHora.valor += ValHoras.Value;
            var changeValorDia=camptra.Where(x => x.nombrecampo == VarDia).First();
            changeValorDia.valor += ValDia.Value;


        }


        private void TrabajadorFinder(object obj)
        {
            nominaEntities db = new nominaEntities();
            TextBox identi = obj as TextBox;
            Nomtrabajador = null;
            Saludo = null;
            trabajador = db.trabajador.FirstOrDefault(x => x.cedula == Identificator);
            if (trabajador != null)
            {

                ErrorMsg = "";
                Nomtrabajador = trabajador.nombres.Trim() + " " + trabajador.apellidos.Trim();
              
                DateTime Today = DateTime.Today;
                DateTime TodayTime = DateTime.Now;
                Tempo = TodayTime.ToString("hh:mm:ss tt");
                //BUSCAR REgistro si existe en el dia
                 Checkcontrol = db.controlasist.Where(x =>x.date==Today).Where(x => x.idtrabajador == trabajador.idtrabajador).FirstOrDefault();
                //
                if (Checkcontrol == null)
                {
                    trabajador.idestatusasis = 2;
                    controlasist nuevocontrol = new controlasist();
                    nuevocontrol.Dia = 0;
                    nuevocontrol.HorasD = 0;

                    nuevocontrol.trabajador = trabajador;
                    nuevocontrol.date = Today;
                    Checkcontrol = nuevocontrol;

                    db.controlasist.Add(Checkcontrol);
                   
                }
                //Configurando para cambiar los campos lineles por coma a listas
                List<string> Lsalidas = new List<string>();
                List<string> Lentradas = new List<string>();

                if (Checkcontrol.Salidas != null)
                {
                    Lsalidas = Checkcontrol.Salidas.Split(',').ToList();
                }
                if (Checkcontrol.Entradas != null)
                {
                    Lentradas = Checkcontrol.Entradas.Split(',').ToList();
                }

                ///Control Entradas
                if (trabajador.idestatusasis == 2)
                {
                    //Check Max entradas
                    if (Lentradas.Count() == Configuracion.MaxEntradas)
                    {
                        trabajador = null;
                        ErrorMsg = "El Tabajador ya cumplió el maximo";
                        return;
                    }



                    Saludo = "Bienvenido(a)!";
                    trabajador.idestatusasis = 1;
                    Lentradas.Add(TodayTime.ToString("H:mm:ss"));
                    var nuevaEntrada = string.Join(",", Lentradas.ToArray());
                    DateTime retrasoTiempo =DateTime.Today + ((DateTime)Configuracion.HoraEntrada).TimeOfDay;
                    TimeSpan retraso = TodayTime - retrasoTiempo;
                    Checkcontrol.Entradas = nuevaEntrada;
                    var minRetraso= (decimal?)retraso.TotalMinutes;
                    if (minRetraso > Configuracion.MinRetrasos)
                    {
                        Checkcontrol.Retraso = (decimal?)retraso.TotalMinutes;
                    }
                    Color = Colors.LightGreen.ToString();

                }
                else //Control Salidas
                {

                    if (Lsalidas.Count() == Configuracion.MaxEntradas)
                    {
                        trabajador = null;
                        ErrorMsg = "El Tabajador ya cumplió el maximo";
                        return;
                    }

                    Saludo = "Hasta Luego...";
                    trabajador.idestatusasis = 2;
                    Lsalidas.Add(TodayTime.ToString("H:mm:ss"));
                    var nuevaSalida = string.Join(",", Lsalidas.ToArray());
                    Checkcontrol.Salidas = nuevaSalida;
                    //Calcular Variables de config
                    //Calcular Horas;


                    var result = Lentradas.Zip(Lsalidas,(primero,segundo)=>new  {entrada=primero,salida=segundo });
                    var union=result.Select(x=> new {x.entrada, x.salida, horas = decimal.Parse((DateTime.Parse(x.salida).Subtract(DateTime.Parse(x.entrada))).TotalHours.ToString()) });
                     Checkcontrol.HorasD = union.Sum(x => x.horas);
                    if (Checkcontrol.HorasD >= Configuracion.MinHorasDia)
                    {
                        Checkcontrol.Dia = 1;
                    }else
                    {
                        ErrorMsg = "El Tabajador no puede salir todavia";
                        Saludo = "";

                        return;
                    }
                    Color = Colors.DarkRed.ToString();
                    PasarDatos();
                }

                db.SaveChanges();
               
                Console.Beep();
                
            }
            else
            {
                ErrorMsg = "No existe el Trabajador";
            }
            identi.Text = null;
            identi.Focus();
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged([System.Runtime.CompilerServices.CallerMemberName] String propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}
