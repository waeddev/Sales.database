CREATE TABLE [dbo].[InventoryOpeningBalance] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [StoreId]        INT                DEFAULT ((0)) NOT NULL,
    [ProductId]      INT                DEFAULT ((0)) NOT NULL,
    [FiscalYear]     INT                DEFAULT ((0)) NULL,
    [Quantity]       FLOAT (53)         DEFAULT ((0.000000000000000e+000)) NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    [VariationId]    INT                NULL,
    CONSTRAINT [InventoryOpeningBalances] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryOpeningBalances_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_InventoryOpeningBalances_Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]),
    CONSTRAINT [FK_InventoryOpeningBalances_Variation] FOREIGN KEY ([VariationId]) REFERENCES [dbo].[ProductVariation] ([Id])
);
