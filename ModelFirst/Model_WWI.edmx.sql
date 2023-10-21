
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/20/2023 17:20:39
-- Generated from EDMX file: C:\Project_RC\TrainingTFS\Tanmoy\ASPNET\learningEntityFramework\learningEntityFramework\ModelFirst\Model_WWI.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModelFirstDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CartProducts_Carts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartProducts] DROP CONSTRAINT [FK_CartProducts_Carts];
GO
IF OBJECT_ID(N'[dbo].[FK_CartProducts_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartProducts] DROP CONSTRAINT [FK_CartProducts_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_Carts_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Carts] DROP CONSTRAINT [FK_Carts_Customers];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Customers];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CartProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CartProducts];
GO
IF OBJECT_ID(N'[dbo].[Carts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carts];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Order]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CartProducts'
CREATE TABLE [dbo].[CartProducts] (
    [CartProductId] int IDENTITY(1,1) NOT NULL,
    [CartId] int  NOT NULL,
    [ProductId] int  NOT NULL
);
GO

-- Creating table 'Carts'
CREATE TABLE [dbo].[Carts] (
    [CartId] int IDENTITY(1,1) NOT NULL,
    [CustomerId] int  NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerID] int IDENTITY(1,1) NOT NULL,
    [CustomerName] nvarchar(100)  NOT NULL,
    [Address1] nvarchar(100)  NOT NULL,
    [Address2] nvarchar(100)  NOT NULL,
    [City] nvarchar(100)  NOT NULL,
    [State] nvarchar(2)  NOT NULL,
    [ZIPCode] nvarchar(5)  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderNum] int  NOT NULL,
    [EmpID] int  NULL,
    [Employee_Name] nvarchar(50)  NULL,
    [Employee_Job_Title] nvarchar(50)  NULL,
    [Sales_Region] nvarchar(50)  NULL,
    [OrderDate] datetime  NULL,
    [OrderType] nvarchar(50)  NULL,
    [CustomerType] nvarchar(50)  NULL,
    [Customer_ID] smallint  NULL,
    [CustName] nvarchar(50)  NULL,
    [CustState] nvarchar(50)  NULL,
    [ProdCategory] nvarchar(50)  NULL,
    [ProdNumber] nvarchar(50)  NULL,
    [ProdName] nvarchar(50)  NULL,
    [Quantity] smallint  NULL,
    [Price] decimal(19,4)  NULL,
    [Discount] nvarchar(50)  NULL,
    [Order_Total] decimal(19,4)  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [FullPrice] decimal(19,4)  NOT NULL,
    [CurrentPrice] decimal(19,4)  NOT NULL,
    [PercentOff] int  NOT NULL,
    [ImagePath] nvarchar(300)  NOT NULL,
    [StarRating] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(100)  NOT NULL,
    [LastName] nvarchar(100)  NOT NULL,
    [EmailAddress] nvarchar(200)  NOT NULL,
    [CustomerId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CartProductId] in table 'CartProducts'
ALTER TABLE [dbo].[CartProducts]
ADD CONSTRAINT [PK_CartProducts]
    PRIMARY KEY CLUSTERED ([CartProductId] ASC);
GO

-- Creating primary key on [CartId] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [PK_Carts]
    PRIMARY KEY CLUSTERED ([CartId] ASC);
GO

-- Creating primary key on [CustomerID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerID] ASC);
GO

-- Creating primary key on [OrderNum] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderNum] ASC);
GO

-- Creating primary key on [ProductId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CartId] in table 'CartProducts'
ALTER TABLE [dbo].[CartProducts]
ADD CONSTRAINT [FK_CartProducts_Carts]
    FOREIGN KEY ([CartId])
    REFERENCES [dbo].[Carts]
        ([CartId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CartProducts_Carts'
CREATE INDEX [IX_FK_CartProducts_Carts]
ON [dbo].[CartProducts]
    ([CartId]);
GO

-- Creating foreign key on [ProductId] in table 'CartProducts'
ALTER TABLE [dbo].[CartProducts]
ADD CONSTRAINT [FK_CartProducts_Products]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Products]
        ([ProductId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CartProducts_Products'
CREATE INDEX [IX_FK_CartProducts_Products]
ON [dbo].[CartProducts]
    ([ProductId]);
GO

-- Creating foreign key on [CustomerId] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [FK_Carts_Customers]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Carts_Customers'
CREATE INDEX [IX_FK_Carts_Customers]
ON [dbo].[Carts]
    ([CustomerId]);
GO

-- Creating foreign key on [CustomerId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Customers]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Customers'
CREATE INDEX [IX_FK_Users_Customers]
ON [dbo].[Users]
    ([CustomerId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------