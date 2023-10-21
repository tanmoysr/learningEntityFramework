﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WideWorldImportersEntities1 : DbContext
    {
        public WideWorldImportersEntities1()
            : base("name=WideWorldImportersEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<City> Cities { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<DeliveryMethod> DeliveryMethods { get; set; }
        public DbSet<PaymentMethod> PaymentMethods { get; set; }
        public DbSet<Person> People { get; set; }
        public DbSet<StateProvince> StateProvinces { get; set; }
        public DbSet<SystemParameter> SystemParameters { get; set; }
        public DbSet<TransactionType> TransactionTypes { get; set; }
        public DbSet<PurchaseOrderLine> PurchaseOrderLines { get; set; }
        public DbSet<PurchaseOrder> PurchaseOrders { get; set; }
        public DbSet<SupplierCategory> SupplierCategories { get; set; }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<SupplierTransaction> SupplierTransactions { get; set; }
        public DbSet<BuyingGroup> BuyingGroups { get; set; }
        public DbSet<CustomerCategory> CustomerCategories { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<CustomerTransaction> CustomerTransactions { get; set; }
        public DbSet<InvoiceLine> InvoiceLines { get; set; }
        public DbSet<Invoice> Invoices { get; set; }
        public DbSet<OrderLine> OrderLines { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<SpecialDeal> SpecialDeals { get; set; }
        public DbSet<ColdRoomTemperature> ColdRoomTemperatures { get; set; }
        public DbSet<Color> Colors { get; set; }
        public DbSet<PackageType> PackageTypes { get; set; }
        public DbSet<StockGroup> StockGroups { get; set; }
        public DbSet<StockItemHolding> StockItemHoldings { get; set; }
        public DbSet<StockItem> StockItems { get; set; }
        public DbSet<StockItemStockGroup> StockItemStockGroups { get; set; }
        public DbSet<StockItemTransaction> StockItemTransactions { get; set; }
        public DbSet<VehicleTemperature> VehicleTemperatures { get; set; }
        public DbSet<Cities_Archive> Cities_Archive { get; set; }
        public DbSet<Countries_Archive> Countries_Archive { get; set; }
        public DbSet<DeliveryMethods_Archive> DeliveryMethods_Archive { get; set; }
        public DbSet<PaymentMethods_Archive> PaymentMethods_Archive { get; set; }
        public DbSet<People_Archive> People_Archive { get; set; }
        public DbSet<StateProvinces_Archive> StateProvinces_Archive { get; set; }
        public DbSet<TransactionTypes_Archive> TransactionTypes_Archive { get; set; }
        public DbSet<SupplierCategories_Archive> SupplierCategories_Archive { get; set; }
        public DbSet<Suppliers_Archive> Suppliers_Archive { get; set; }
        public DbSet<BuyingGroups_Archive> BuyingGroups_Archive { get; set; }
        public DbSet<CustomerCategories_Archive> CustomerCategories_Archive { get; set; }
        public DbSet<Customers_Archive> Customers_Archive { get; set; }
        public DbSet<ColdRoomTemperatures_Archive> ColdRoomTemperatures_Archive { get; set; }
        public DbSet<Colors_Archive> Colors_Archive { get; set; }
        public DbSet<PackageTypes_Archive> PackageTypes_Archive { get; set; }
        public DbSet<StockGroups_Archive> StockGroups_Archive { get; set; }
        public DbSet<StockItems_Archive> StockItems_Archive { get; set; }
    }
}