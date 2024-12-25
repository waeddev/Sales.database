CREATE TABLE [dbo].[Inventory] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [StoreId]        INT                DEFAULT ((0)) NOT NULL,
    [ProductId]      INT                DEFAULT ((0)) NOT NULL,
    [Quantity]       FLOAT (53)         DEFAULT ((0.000000000000000e+000)) NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    [VariationId]    INT                NULL,
    CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Inventory_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_Inventory_Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]),
    CONSTRAINT [FK_Inventory_Variation] FOREIGN KEY ([VariationId]) REFERENCES [dbo].[ProductVariation] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Inventory_ProductId]
    ON [dbo].[Inventory]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Inventory_StoreId]
    ON [dbo].[Inventory]([StoreId] ASC);

