﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccessLayer
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DrinkSmileEntities : DbContext
    {
        public DrinkSmileEntities()
            : base("name=DrinkSmileEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BO> BOes { get; set; }
        public virtual DbSet<BONCHUA> BONCHUAs { get; set; }
        public virtual DbSet<CHUONG> CHUONGs { get; set; }
        public virtual DbSet<COSO> COSOes { get; set; }
        public virtual DbSet<CTQUYTRINH> CTQUYTRINHs { get; set; }
        public virtual DbSet<CTSUCKHOE> CTSUCKHOEs { get; set; }
        public virtual DbSet<NHANVIEN> NHANVIENs { get; set; }
        public virtual DbSet<PHANPHOI> PHANPHOIs { get; set; }
        public virtual DbSet<QUYTRINHVATSUA> QUYTRINHVATSUAs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TRUSO> TRUSOes { get; set; }
    }
}
