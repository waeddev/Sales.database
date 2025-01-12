CREATE TABLE [dbo].[ProductVariation] (
    [Id]                INT                IDENTITY (1, 1) NOT NULL,
    [ProductId]         INT                NOT NULL,
    [ProductTypeId]     INT                NULL,
    [ProductName]       NVARCHAR (250)     NULL,
    [CategoryId]        INT                NULL,
    [CompanyId]         INT                NULL,
    [UnitId]            INT                NULL,
    [LowStockThreshold] INT                NULL,
    [Discount]          DECIMAL (18, 2)    NULL,
    [Sku]               NVARCHAR (MAX)     NULL,
    [Barcode]           NVARCHAR (MAX)     NULL,
    [MinimumQuantity]   INT                NOT NULL,
    [ActiveToBuy]       BIT                NOT NULL,
    [ActiveToSale]      BIT                NOT NULL,
    [EnableDiscount]    BIT                NOT NULL,
    [TaxTypeId]         INT                NOT NULL,
    [RetailPrice]       DECIMAL (18, 2)    NOT NULL,
    [WholesalePrice]    DECIMAL (18, 2)    NOT NULL,
    [SaleVat]           DECIMAL (18, 2)    NOT NULL,
    [PurchasingVat]     DECIMAL (18, 2)    NOT NULL,
    [IsBalanced]        BIT                NOT NULL,
    [IsActive]          BIT                NOT NULL,
    [IsDeleted]         BIT                NOT NULL,
    [Created]           DATETIMEOFFSET (7) NULL,
    [LastModified]      DATETIMEOFFSET (7) NULL,
    [LastModifiedBy]    NVARCHAR (250)     NULL,
    CONSTRAINT [PK_ProductVariation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductVariation_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_ProductVariation_Unit] FOREIGN KEY ([UnitId]) REFERENCES [dbo].[Unit] ([Id])
);

