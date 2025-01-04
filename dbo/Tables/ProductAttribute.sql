CREATE TABLE [dbo].[ProductAttribute] (
    [Id]               INT    IDENTITY (1, 1) NOT NULL,
    [ProductId]        INT    NULL,
    [AttributeId]      BIGINT NULL,
    [AttributeValueId] BIGINT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductAttribute_Attribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([Id]),
    CONSTRAINT [FK_ProductAttribute_AttributeValueId] FOREIGN KEY ([AttributeValueId]) REFERENCES [dbo].[AttributeValue] ([Id]),
    CONSTRAINT [FK_ProductAttribute_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);



