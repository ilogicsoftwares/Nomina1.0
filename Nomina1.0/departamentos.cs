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
    
    public partial class departamentos
    {
        public departamentos()
        {
            this.cargo = new HashSet<cargo>();
            this.trabajador = new HashSet<trabajador>();
        }
    
        public int iddepartamentos { get; set; }
        public string Descripcion { get; set; }
        public string codigo { get; set; }
    
        public virtual ICollection<cargo> cargo { get; set; }
        public virtual ICollection<trabajador> trabajador { get; set; }
    }
}
