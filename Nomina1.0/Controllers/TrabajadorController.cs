using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity.Validation;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;


namespace Nomina1._0.Controllers
{
    class TrabajadorController:trabajador
    {

        public static List<departamentos> Ldepart { get { return Datos.Micontexto.departamentos.ToList();}}
        public static List<estatus> Lestatus { get { return Datos.Micontexto.estatus.ToList();}}
        public static List<cargo> Lcargo { get { return Datos.Micontexto.cargo.ToList(); }}
        public static List<nominatype> Lnomina { get { return Datos.Micontexto.nominatype.ToList(); } }
        public static List<nacionalidad> Lnac {get { return Datos.Micontexto.nacionalidad.ToList(); }}
        public static List<gradointruc> Lgrado { get { return Datos.Micontexto.gradointruc.ToList(); }}
        public static List<bancos> Lbanco { get { return Datos.Micontexto.bancos.ToList();}}
        public static List<tipocuenta> Ltipoc { get { return Datos.Micontexto.tipocuenta.ToList(); } }
        
        public static trabajador TrabajadorActual { get; set; }

        public TrabajadorController()
        {
            
            sexo = 1;
            edocivil=1;

        }
     


        public static void TrabajadorBuscado(String Cedula )
        {
            var trabajadoractual = (from trab in Datos.Micontexto.trabajador
                                   where trab.cedula == Cedula
                                   select new TrabajadorController()
                                   {
                                       cedula = trab.cedula,
                                       idtrabajador = trab.idtrabajador,
                                       nombres = trab.nombres,
                                       apellidos = trab.apellidos,
                                       fechanac = trab.fechanac,
                                       lugarnac = trab.lugarnac,
                                       nacionalidad = trab.nacionalidad,
                                       sexo = trab.sexo,
                                       edocivil = trab.edocivil,
                                       Nhijos = trab.Nhijos,
                                       direccion = trab.direccion,
                                       telefonocel = trab.telefonocel,
                                       telefonolocal = trab.telefonolocal,
                                       nombrecontacto = trab.nombrecontacto,
                                       telefonocontacto = trab.telefonocontacto,
                                       nominatype = trab.nominatype,
                                       estatus = trab.estatus,
                                       departamentos = trab.departamentos,
                                       Fechaing = trab.Fechaing,
                                       cargo = trab.cargo,
                                       bancos = trab.bancos,
                                       Sueldo = trab.Sueldo,
                                       numerocuenta = trab.numerocuenta,
                                       tipocuenta = trab.tipocuenta,
                                       gradointruc = trab.gradointruc



                                   }).FirstOrDefault();

            trabajador estetrabajador = trabajadoractual;
            TrabajadorActual=  estetrabajador;
        }

        //para eliminar  Datos.Micontexto.trabajador.Remove();
       

       
       
      
      
      
       
    


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
