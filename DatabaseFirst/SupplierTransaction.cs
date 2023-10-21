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
    
    public partial class SupplierTransaction
    {
        public int SupplierTransactionID { get; set; }
        public int SupplierID { get; set; }
        public int TransactionTypeID { get; set; }
        public Nullable<int> PurchaseOrderID { get; set; }
        public Nullable<int> PaymentMethodID { get; set; }
        public string SupplierInvoiceNumber { get; set; }
        public System.DateTime TransactionDate { get; set; }
        public decimal AmountExcludingTax { get; set; }
        public decimal TaxAmount { get; set; }
        public decimal TransactionAmount { get; set; }
        public decimal OutstandingBalance { get; set; }
        public Nullable<System.DateTime> FinalizationDate { get; set; }
        public Nullable<bool> IsFinalized { get; set; }
        public int LastEditedBy { get; set; }
        public System.DateTime LastEditedWhen { get; set; }
    
        public virtual PaymentMethod PaymentMethod { get; set; }
        public virtual Person Person { get; set; }
        public virtual TransactionType TransactionType { get; set; }
        public virtual PurchaseOrder PurchaseOrder { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
