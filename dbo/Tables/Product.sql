CREATE TABLE [dbo].[Product] (
    [Id]                INT                IDENTITY (1, 1) NOT NULL,
    [ProductTypeId]     INT                NOT NULL,
    [ProductName]       NVARCHAR (MAX)     NULL,
    [IsBalanced]        BIT                NOT NULL,
    [IsActive]          BIT                NOT NULL,
    [IsDeleted]         BIT                NOT NULL,
    [CategoryId]        INT                NOT NULL,
    [CompanyId]         INT                NOT NULL,
    [UnitId]            INT                NOT NULL,
    [LowStockThreshold] NVARCHAR (MAX)     NULL,
    [Created]           DATETIMEOFFSET (7) NULL,
    [CreatedBy]         NVARCHAR (250)     NULL,
    [LastModified]      DATETIMEOFFSET (7) NULL,
    [LastModifiedBy]    NVARCHAR (250)     NULL,
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
    [Description]       NVARCHAR (MAX)     NULL,
    [CostPrice]         DECIMAL (18, 2)    DEFAULT ((0)) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Product_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id]),
    CONSTRAINT [FK_Product_Company_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([Id]),
    CONSTRAINT [FK_Product_Unit_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [dbo].[Unit] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId]
    ON [dbo].[Product]([CategoryId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Product_CompanyId]
    ON [dbo].[Product]([CompanyId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Product_UnitId]
    ON [dbo].[Product]([UnitId] ASC);

