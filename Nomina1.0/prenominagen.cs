//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Nomina1._0
{
    using System;
    using System.Collections.Generic;
    
    public partial class prenominagen
    {
        public int idprenomina { get; set; }
        public int Idnominagen { get; set; }
        public int idnominatype { get; set; }
        public Nullable<int> idtrabajador { get; set; }
        public Nullable<int> idconcepto { get; set; }
        public string nombrecon { get; set; }
        public Nullable<decimal> valorconcepto { get; set; }
        public Nullable<decimal> valorvar { get; set; }
        public Nullable<int> tipoconcepto { get; set; }
    
        public virtual nominatype nominatype { get; set; }
        public virtual conceptos conceptos { get; set; }
        public virtual trabajador trabajador { get; set; }
    }
}
