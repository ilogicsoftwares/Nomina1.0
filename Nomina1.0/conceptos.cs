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
    
    public partial class conceptos
    {
        public conceptos()
        {
            this.prenominagen = new HashSet<prenominagen>();
            this.prenomina = new HashSet<prenomina>();
        }
    
        public int idconcepto { get; set; }
        public string nombre { get; set; }
        public string variante { get; set; }
        public string descripcion { get; set; }
        public Nullable<int> tipo { get; set; }
        public string Valor { get; set; }
        public string codigo { get; set; }
        public int noimprimir { get; set; }
        public int desactivar { get; set; }
    
        public virtual ICollection<prenominagen> prenominagen { get; set; }
        public virtual ICollection<prenomina> prenomina { get; set; }
    }
}
