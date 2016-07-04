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

namespace Nomina1._0.ViewModel
{
    
    class PrenominaViewModel : INotifyPropertyChanged
    {
        private DateTime today = DateTime.Now;
        public List<nominatype> Lnominas { get { return Datos.Micontexto.nominatype.ToList(); } }
        public decimal TotalAsig { get; set; }
        public decimal TotalDeduc { get; set; }
        public decimal TotalNomina { get; set; }
        public object[] Trabajadores { get; set; }
        public static DateTime FechaD { get; set; }
        public static DateTime FechaA { get; set; }
        public int TotalTra { get; set; }
        public RelayCommand GenerarPrenominaCommand { get; set; }
        public PrenominaViewModel()
        {
            Fdesde= today;
            FHasta = today;
            GenerarPrenominaCommand = new RelayCommand(GenerarPrenomina);
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
                TotalNomina = TotalAsig - TotalDeduc;
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
            }else if(Intervaltype == 2)
            {
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
                Fdesde = new DateTime(today.Year, today.Month, 1);
                FHasta= new DateTime(today.Year, today.Month, DateTime.DaysInMonth(today.Year,today.Month));
            }
            

        }

        public void GenerarPrenomina(object nomina)
        {
           // try { 
            nominaEntities paraconcepto = new nominaEntities();
            var idx= ((nominatype)nomina).idnomina;
             var TrabInNomina = Datos.Micontexto.trabajador.Where(x=>x.nominatype.idnomina==idx);
            var prenominaActual = Datos.Micontexto.prenomina.Where(x => x.nominatype.idnomina ==idx);
            if (prenominaActual.Count() > 0)
            {
                var msg = MessageBox.Show("Existe una Pre-nomina Configurada Desea Editarla? de lo Contrario se Eliminaran los Datos", "Prenomina", MessageBoxButton.YesNo, MessageBoxImage.Question);
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
                            MessageBox.Show("Error en Trabajador " + trab.cedula + " en el Concepto " + idcon, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
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
