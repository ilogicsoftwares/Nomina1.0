//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Nomina1._0
{
    using System;
    using System.Collections.Generic;
    
    public partial class trabajador
    {
        public trabajador()
        {
            this.prenomina = new HashSet<prenomina>();
            this.prenominagen = new HashSet<prenominagen>();
        }
    
        public int idtrabajador { get; set; }
        public string cedula { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public string direccion { get; set; }
        public string telefonocel { get; set; }
        public string telefonolocal { get; set; }
        public string telefonocontacto { get; set; }
        public string nombrecontacto { get; set; }
        public string correo { get; set; }
        public Nullable<decimal> Sueldo { get; set; }
        public string conceptos { get; set; }
        public Nullable<int> sexo { get; set; }
        public Nullable<System.DateTime> Fechaing { get; set; }
        public Nullable<System.DateTime> fechanac { get; set; }
        public Nullable<int> edocivil { get; set; }
        public Nullable<int> Nhijos { get; set; }
        public string lugarnac { get; set; }
        public string dirfoto { get; set; }
        public string numerocuenta { get; set; }
    
        public virtual bancos bancos { get; set; }
        public virtual cargo cargo { get; set; }
        public virtual departamentos departamentos { get; set; }
        public virtual estatus estatus { get; set; }
        public virtual gradointruc gradointruc { get; set; }
        public virtual nacionalidad nacionalidad { get; set; }
        public virtual nominatype nominatype { get; set; }
        public virtual ICollection<prenomina> prenomina { get; set; }
        public virtual ICollection<prenominagen> prenominagen { get; set; }
        public virtual tipocuenta tipocuenta { get; set; }
    }
}
