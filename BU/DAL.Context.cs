﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BU
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DALContainer : DbContext
    {
        public DALContainer()
            : base("name=DALContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Film> FilmSet { get; set; }
        public virtual DbSet<Gebruiker> GebruikerSet { get; set; }
        public virtual DbSet<Regisseur> RegisseurSet { get; set; }
        public virtual DbSet<Review> ReviewSet { get; set; }
        public virtual DbSet<Rol> RolSet { get; set; }
        public virtual DbSet<Acteur> ActeurSet { get; set; }
    }
}
