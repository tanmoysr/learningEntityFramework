//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DatabaseFirst
{
    using System;
    using System.Collections.Generic;
    
    public partial class City
    {
        public City()
        {
            this.SystemParameters = new HashSet<SystemParameter>();
            this.SystemParameters1 = new HashSet<SystemParameter>();
            this.Suppliers = new HashSet<Supplier>();
            this.Suppliers1 = new HashSet<Supplier>();
            this.Customers = new HashSet<Customer>();
            this.Customers1 = new HashSet<Customer>();
        }
    
        public int CityID { get; set; }
        public string CityName { get; set; }
        public int StateProvinceID { get; set; }
        public System.Data.Spatial.DbGeography Location { get; set; }
        public Nullable<long> LatestRecordedPopulation { get; set; }
        public int LastEditedBy { get; set; }
        public System.DateTime ValidFrom { get; set; }
        public System.DateTime ValidTo { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual StateProvince StateProvince { get; set; }
        public virtual ICollection<SystemParameter> SystemParameters { get; set; }
        public virtual ICollection<SystemParameter> SystemParameters1 { get; set; }
        public virtual ICollection<Supplier> Suppliers { get; set; }
        public virtual ICollection<Supplier> Suppliers1 { get; set; }
        public virtual ICollection<Customer> Customers { get; set; }
        public virtual ICollection<Customer> Customers1 { get; set; }
    }
}
