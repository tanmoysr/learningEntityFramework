//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelFirst
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public Product()
        {
            this.CartProducts = new HashSet<CartProduct>();
        }
    
        public int ProductId { get; set; }
        public string Name { get; set; }
        public decimal FullPrice { get; set; }
        public decimal CurrentPrice { get; set; }
        public int PercentOff { get; set; }
        public string ImagePath { get; set; }
        public int StarRating { get; set; }
    
        public virtual ICollection<CartProduct> CartProducts { get; set; }
    }
}
