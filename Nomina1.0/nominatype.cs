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
    
    public partial class nominatype
    {
        public nominatype()
        {
            this.trabajador = new HashSet<trabajador>();
        }
    
        public int idnomina { get; set; }
        public string descripcion { get; set; }
        public int intervalo { get; set; }
        public string conceptos { get; set; }
        public string scodigo { get; set; }
    
        public virtual ICollection<trabajador> trabajador { get; set; }
    }
}
