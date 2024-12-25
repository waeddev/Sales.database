CREATE TABLE [dbo].[ProductAttribute] (
    [Id]          INT    IDENTITY (1, 1) NOT NULL,
    [ProductId]   INT    NULL,
    [AttributeId] BIGINT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductAttribute_Attribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([Id]),
    CONSTRAINT [FK_ProductAttribute_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);

