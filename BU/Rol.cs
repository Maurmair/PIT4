//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Rol
    {
        public int RolID { get; set; }
        public string Rolnaam { get; set; }
        public int ActeurActeurID { get; set; }
    
        public virtual Acteur Acteur { get; set; }
    }
}
