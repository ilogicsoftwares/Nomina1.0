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
    
    public partial class controlasist
    {
        public int id { get; set; }
        public Nullable<int> idtrabajador { get; set; }
        public System.DateTime date { get; set; }
        public string Entradas { get; set; }
        public string Salidas { get; set; }
        public Nullable<decimal> HorasD { get; set; }
        public Nullable<decimal> Dia { get; set; }
        public Nullable<decimal> HorasN { get; set; }
        public Nullable<decimal> HorasEx { get; set; }
        public Nullable<decimal> DiaF { get; set; }
        public Nullable<decimal> Inasistencia { get; set; }
        public Nullable<decimal> Retraso { get; set; }
    
        public virtual trabajador trabajador { get; set; }
    }
}
