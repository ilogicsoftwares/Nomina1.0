using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using NCalc;
using System.Collections.ObjectModel;
using System.Collections;
using Nomina1._0.ViewModel;


using System.IO;
using System.Windows.Forms;

namespace Nomina1._0.ViewModel
{
    
    class PrenominaViewModel : INotifyPropertyChanged
    {
        private DateTime today = DateTime.Now;
        private int CantDays { get; set; }
        public List<nominatype> Lnominas { get { return Datos.Micontexto.nominatype.ToList(); } }
        public decimal TotalAsig { get; set; }
        public decimal TotalDeduc { get; set; }
        public decimal TotalNomina { get; set; }
        public object[] Trabajadores { get; set; }
        public static DateTime FechaD { get; set; }
        public static DateTime FechaA { get; set; }
        public int TotalTra { get; set; }
        public int? NominagenID { get; set; }
        public RelayCommand GenerarPrenominaCommand { get; set; }
        public PrenominaViewModel()
        {
            Fdesde= today;
            FHasta = today;
            GenerarPrenominaCommand = new RelayCommand(GenerarPrenomina);
        }
        public PrenominaViewModel(int prenominagen)
        {


            Fdesde = today;
            FHasta = today;
            GenerarPrenominaCommand = new RelayCommand(GenerarPrenomina);
            Carganomina(prenominagen);
        }
        private void Carganomina(int prenominagen)
        {
            var z = from items in Datos.Micontexto.prenominagen
                    where items.Idnominagen == prenominagen
                    select new prenomina
                    {
                        nominatype=items.nominatype,
                        trabajador=items.trabajador,
                        idconcepto=items.idconcepto,
                        nombrecon=items.nombrecon,
                        valorconcepto=items.valorconcepto,
                        valorvar=items.valorvar,
                        tipoconcepto=items.tipoconcepto,
                        idnominagen=items.Idnominagen
                        
                    };
            NominaActual = new ObservableCollection<prenomina>(z);
            SelectedNomina = z.First().nominatype;
            NominagenID = z.First().idnominagen;
        }
        private nominatype _SelecteNomina;
        public nominatype SelectedNomina
        {
            get { return _SelecteNomina; }
            set { _SelecteNomina = value as nominatype;
                CargarFechas(value.intervalo);
                NotifyPropertyChanged();
            }
        }
        private ObservableCollection<prenomina> _NominaActual;
        public ObservableCollection<prenomina> NominaActual {
            get { return _NominaActual; }
            set { _NominaActual = value;
                NotifyPropertyChanged();
                TotalAsig = NominaActual.Where(x => x.tipoconcepto == 1).Sum(x => x.valorconcepto).Value;
                TotalDeduc = NominaActual.Where(x => x.tipoconcepto == 2).Sum(x => x.valorconcepto).Value;
                TotalNomina = decimal.Round(( TotalAsig - TotalDeduc),2);
                var a= NominaActual.Select(x => new { Nombre = x.trabajador.nombres.Trim() + " " + x.trabajador.apellidos.Trim(),ID = x.trabajador.idtrabajador }).Distinct() as IEnumerable<object>;
                Trabajadores =a.ToArray();
                TotalTra = Trabajadores.Count();
            }

        }


        private DateTime _FDesde;
        public DateTime Fdesde
        {
            get { return _FDesde; }
            set { _FDesde = value;
                FechaD = value;
                NotifyPropertyChanged();
            }

        }
        private DateTime _FHasta;
        public DateTime FHasta
        {
            get { return _FHasta; }
            set { _FHasta = value;
                FechaA = value;
                NotifyPropertyChanged();
            }

        }

        private void CargarFechas(int Intervaltype)
        {
           
            if (Intervaltype==1)
            {
                Fdesde = today;
                FHasta = today;
                CantDays = 6;
            }else if(Intervaltype == 2)
            {
                CantDays = 14;
                if(today.Day<=15)
                {
                    Fdesde = new DateTime(today.Year, today.Month, 1);
                    FHasta = Fdesde.AddDays(14);
                  
                }else
                {
                    Fdesde = new DateTime(today.Year, today.Month, 16);
                    FHasta = new DateTime(today.Year, today.Month, DateTime.DaysInMonth(today.Year,today.Month));
                }

            }
            else
            {
                CantDays = 28;
                Fdesde = new DateTime(today.Year, today.Month, 1);
                FHasta= new DateTime(today.Year, today.Month, DateTime.DaysInMonth(today.Year,today.Month));
            }
            

        }

        public void GenerarPrenomina(object nomina)
        {
            // try { 
            if (nomina == null)
            {
                Datos.Msg("Selecione una Nomina");
                return;
            }
            nominaEntities paraconcepto = new nominaEntities();
            var idx= ((nominatype)nomina).idnomina;
            if (ValidateDates())
            {
                return;
            }
            var TrabInNomina = Datos.Micontexto.trabajador.Where(x=>x.nominatype.idnomina==idx);
            var prenominaActual = Datos.Micontexto.prenomina.Where(x => x.nominatype.idnomina ==idx);
            if (prenominaActual.Count() > 0)
            {
                var msg = System.Windows.MessageBox.Show("Existe una Pre-nomina Configurada Desea Editarla? de lo Contrario se Eliminaran los Datos", "Prenomina", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (msg == MessageBoxResult.Yes)
                {
                    return;
                }
            }
                
                    Datos.Micontexto.Database.ExecuteSqlCommand("DELETE  FROM prenomina WHERE idnominatype=@p0", ((nominatype)nomina).idnomina);
                    foreach (var trab in TrabInNomina)
                    {
                        var concepts = trab.conceptos.Split(',');

                        foreach (var con in concepts)
                        {
                            prenomina PreNom = new prenomina();
                            PreNom.nominatype = trab.nominatype;
                            PreNom.trabajador = trab;

                            var idcon = Int32.Parse(con);
                            var xa = paraconcepto.conceptos.FirstOrDefault(x => x.idconcepto == idcon);
                        try { 
                           
                            PreNom.idconcepto = xa.idconcepto;
                        }catch
                        {
                        System.Windows.MessageBox.Show("Error en Trabajador " + trab.cedula + " en el Concepto " + idcon, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                            PreNom.nombrecon = xa.nombre;
                           try { 
                            PreNom.valorconcepto = LeerConcepto(xa.Valor, trab.idtrabajador);
                                 }catch
                    {
                        Datos.Msg("Error en el Trabajador " + trab.cedula.Trim() + " " + trab.nombres.Trim(), "Error", "E");
                    }
                            PreNom.valorvar = decimal.Parse(LeerCampo(xa.variante, trab.idtrabajador));
                            PreNom.tipoconcepto = xa.tipo;
                            Datos.Micontexto.prenomina.Add(PreNom);
                           
                        }
                    }
                    Datos.Micontexto.SaveChanges();
            NominaActual =new ObservableCollection<prenomina>(Datos.Micontexto.prenomina.Where(x=>x.nominatype.idnomina==idx));
            WinPrenomina nuevaprenomina = new WinPrenomina(this);
            nuevaprenomina.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            nuevaprenomina.Owner = Datos._PrincipalWindow;
               nuevaprenomina.ShowInTaskbar = false;
                nuevaprenomina.ShowDialog();
            //}
           // catch(Exception ex)
           // {
              //  MessageBox.Show(ex.ToString(), "Error",MessageBoxButton.OK, MessageBoxImage.Error);
           // }
            }
           
      
        public static decimal LeerConcepto(string conceptvalue,int idx)
        {
            var divconcept = conceptvalue.Split('*', '+', '-', '/', '(', ')');
            string valorconvertido=conceptvalue;
            nominaEntities paraconcepto = new nominaEntities();
        
            foreach (var item in divconcept)
            {
                if (item.Contains('$'))
                {
                    var y=LeerCampo(item, idx);
                    valorconvertido = valorconvertido.Replace(item, y);
                }
                if (item.Contains('@'))
                {
                    var itemn = item.Remove(0, 1);
                   
                        var j = EjecutarProc(itemn, idx.ToString());
                        valorconvertido = valorconvertido.Replace(item, j);
                                           
                                         

                }

            }
            valorconvertido = valorconvertido.Replace(',', '.');
            NCalc.Expression e = new NCalc.Expression(valorconvertido);
            return decimal.Parse( e.Evaluate().ToString()); ;
        
        }

        public static string LeerCampo(string campo,int idx)
        {
            if (campo == null)
            {
                return "0";
            }
            else
            {
                nominaEntities paraconcepto = new nominaEntities();
                var itemn = campo.Remove(0, 1);

                var r = paraconcepto.campotra.Where(x => x.idtrabajador == idx)
                                             .Where(x => x.nombrecampo == itemn)
                                             .Select(x => x.valor).SingleOrDefault().ToString();

                return r;
            }
        }

        private static string EjecutarProc(string accion, string parametros)
        {
           

                object[] param = null;
                if (parametros != null)
                {

                    param = parametros.Split(',');

                }
                Type type = typeof(Procs);
                object instance = Activator.CreateInstance(type);
                MethodInfo method = type.GetMethod(accion);
                return (method.Invoke(instance, param)).ToString();
            
           
        }
         private bool  ValidateDates()
        {

           
            var result = false;
            
            var Gen = Datos.Micontexto.nominauni.Where(x=>x.nominatype==SelectedNomina.idnomina);
          
            if ((FHasta-Fdesde).TotalDays < CantDays || (FHasta- Fdesde).TotalDays >CantDays+3)
            {
                Datos.Msg("La cantidad de dias entre una y otra fecha debe de ser de " + CantDays.ToString() +" y no mayor de " +(CantDays+2).ToString()   , "Error");
                result = true;
            return result;


            }

            var nominasGen = Gen.Where(x => x.desde <= Fdesde && x.hasta>= Fdesde);
            if  (nominasGen.Count()>0)
            { 
            Datos.Msg("La fecha de inicio no puede estar incluida en el periodo de una Nomina generada", "Error");
                var x = Environment.ExitCode;
                result = true;
            return result;

            }


            var nominasGen2 = Gen.Where(x => x.desde <= FHasta && x.hasta >= FHasta);
                if (nominasGen2.Count() > 0)
                {
                    Datos.Msg("La fecha final no puede estar incluida en el periodo de una Nomina generada", "Error");
                    result = true;
            return result;

            }

            return result;

        }
        public void GenerarNomina()
        {
            nominauni GenNom = new nominauni();

            GenNom.nominatype = NominaActual.FirstOrDefault().nominatype.idnomina;
            GenNom.desde = this.Fdesde;
            GenNom.hasta = this.FHasta;
            GenNom.totalasignaciones = TotalAsig;
            GenNom.totaldeducciones = TotalDeduc;
            GenNom.totalnomina = TotalNomina;
            GenNom.estatus = 1;
            GenNom.fecha = DateTime.Now;
            GenNom.user = LogingViewModel.UsuarioActivo.idusuario;
            GenNom.cantidadt = TotalTra;

            try
            {
                Datos.Micontexto.nominauni.Add(GenNom);
              
                Datos.Micontexto.SaveChanges();
                NominagenID = GenNom.idnomina;
            }
            catch(Exception EX)
            {
                Datos.Msg("Error Al Generar la nomina, Detalle: " + EX.ToString(), "Error", "E");
                return;
            }
            nominaEntities newentiry = new nominaEntities();
            foreach(var item in NominaActual)
            {
                prenominagen itennom = new prenominagen
                {
                    Idnominagen=GenNom.idnomina,
                    nominatype=item.nominatype,
                    trabajador=item.trabajador,
                    idconcepto=item.idconcepto,
                    nombrecon=item.nombrecon,
                    valorconcepto=item.valorconcepto,
                    valorvar=item.valorvar,
                    tipoconcepto=item.tipoconcepto
                    
                };
                Datos.Micontexto.prenominagen.Add(itennom);
            }
            try
            {

                Datos.Micontexto.SaveChanges();
            }
            catch (Exception EX)
            {
                Datos.Msg("Error Al Generar la nomina, Detalle: " + EX.ToString(), "Error", "E");
                return;
            }
            Datos.Micontexto.Database.ExecuteSqlCommand("DELETE  FROM prenomina WHERE idnominatype=@p0", GenNom.nominatype);
            Datos.Msg("Nomina " + GenNom.idnomina.ToString().Trim() + " Generada", "Nomina Generada");


        }

        public void CrearTxt()
        {
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            saveFileDialog1.Filter = "DAT File|*.DAT";
            saveFileDialog1.Title = "Guardar Archivo TXT Bancario";


            if (saveFileDialog1.ShowDialog()== DialogResult.OK)
            {
                List<string> Txt = new List<string>();
                // WriteAllLines creates a file, writes a collection of strings to the file,
                // and then closes the file.  You do NOT need to call Flush() or Close().
                var Nuncuenta = "01020358990000127323";
                var Tnomina =Int32.Parse((TotalNomina.ToString()).Replace(",", ""));
                var sTnomina= Tnomina.ToString("D13");
                var CodeCompany = "03291";
                var line = "HASOC CIVIL U E P COLEGIO TERESA CARRENO " + Nuncuenta + NominagenID.ToString()+ DateTime.Now.ToString("dd/MM/yy")+ sTnomina + CodeCompany;
                Txt.Add(line);
                var Grouping = from items in NominaActual
                               group items by items.trabajador into x
                               select new
                               {
                                   trabajador = x.First().trabajador,
                                   asigs = (float)Math.Round((double)x.Where(t => t.tipoconcepto == 1).Sum(t => t.valorconcepto), 2),
                                   tipoc = x.First().trabajador.tipocuenta == null ? 1 : x.First().trabajador.tipocuenta.idtipocuenta

                               };
                               
                               

                foreach (var item in Grouping)
                {
                    var linelis = (item.tipoc- 1).ToString();
                    linelis += Int32.Parse( item.trabajador.numerocuenta ??"0").ToString("D20");
                    float Dmontoasig =item.asigs;

                    var montoasig = Dmontoasig.ToString().Replace(",", "");
                    var lamontoasig = int.Parse(montoasig).ToString("D11");
                    linelis += lamontoasig;
                    linelis += (item.tipoc - 1).ToString()+770;
                    var nomap= item.trabajador.nombres.Trim().ToUpper() + " " + item.trabajador.apellidos.Trim().ToUpper();
                    linelis += string.Format("{0,-40}", nomap);
                    linelis += int.Parse(item.trabajador.cedula).ToString("D10");
                    linelis += 3291.ToString("D6");
                    Txt.Add(linelis);
                }
               try { 
                System.IO.File.WriteAllLines(saveFileDialog1.FileName, Txt);
                    Datos.Msg("Txt Generado en " + saveFileDialog1.FileName);
                }
                catch(Exception error)
                {
                    Datos.Msg("Error al generar el Txt, Detalles: " + error.ToString(), "Error", "E");
                }
            }

        }


        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}

