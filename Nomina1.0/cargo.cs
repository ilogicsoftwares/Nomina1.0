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
    
    public partial class cargo
    {
        public cargo()
        {
            this.trabajador = new HashSet<trabajador>();
        }
    
        public int idcargo { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string conceptos { get; set; }
        public Nullable<int> Iddepartamentos { get; set; }
        public string sidcargo { get; set; }
    
        public virtual departamentos departamentos { get; set; }
        public virtual ICollection<trabajador> trabajador { get; set; }
    }
}
