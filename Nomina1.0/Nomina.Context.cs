﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class nominaEntities : DbContext
    {
        public nominaEntities()
            : base("name=nominaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<usermenu> usermenu { get; set; }
        public DbSet<users> users { get; set; }
        public DbSet<usertype> usertype { get; set; }
        public DbSet<bancos> bancos { get; set; }
        public DbSet<campos> campos { get; set; }
        public DbSet<cargo> cargo { get; set; }
        public DbSet<conceptos> conceptos { get; set; }
        public DbSet<departamentos> departamentos { get; set; }
        public DbSet<estatus> estatus { get; set; }
        public DbSet<gradointruc> gradointruc { get; set; }
        public DbSet<jornada> jornada { get; set; }
        public DbSet<nacionalidad> nacionalidad { get; set; }
        public DbSet<nominaini> nominaini { get; set; }
        public DbSet<nominatype> nominatype { get; set; }
        public DbSet<nominauni> nominauni { get; set; }
        public DbSet<prenomina> prenomina { get; set; }
        public DbSet<tipocuenta> tipocuenta { get; set; }
        public DbSet<varsys> varsys { get; set; }
        public DbSet<trabajador> trabajador { get; set; }
    }
}
