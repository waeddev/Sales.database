CREATE TYPE [dbo].[ProductVariationType] AS TABLE (
    [ProductId]         INT             NULL,
    [ProductTypeId]     INT             NULL,
    [ProductName]       NVARCHAR (MAX)  NULL,
    [UnitId]            INT             NULL,
    [LowStockThreshold] INT             NULL,
    [Discount]          DECIMAL (18, 2) NULL,
    [Sku]               NVARCHAR (MAX)  NULL,
    [MinimumQuantity]   INT             NULL,
    [ActiveToBuy]       BIT             NULL,
    [ActiveToSale]      BIT             NULL,
    [EnableDiscount]    BIT             NULL,
    [TaxTypeId]         INT             NULL,
    [RetailPrice]       DECIMAL (18, 2) NULL,
    [WholesalePrice]    DECIMAL (18, 2) NULL,
    [SaleVat]           DECIMAL (18, 2) NULL,
    [PurchasingVat]     DECIMAL (18, 2) NULL,
    [IsBalanced]        BIT             NULL,
    [IsActive]          BIT             NULL,
    [IsDeleted]         BIT             NULL);
GO

