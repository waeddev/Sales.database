CREATE TABLE [dbo].[ProductVariationAttribute] (
    [Id]               INT    IDENTITY (1, 1) NOT NULL,
    [VariationId]      INT    NULL,
    [AttributeId]      BIGINT NULL,
    [AttributeValueId] BIGINT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductVariationAttribute_Attribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([Id]),
    CONSTRAINT [FK_ProductVariationAttribute_AttributeValue] FOREIGN KEY ([AttributeValueId]) REFERENCES [dbo].[AttributeValue] ([Id]),
    CONSTRAINT [FK_ProductVariationAttribute_Variation] FOREIGN KEY ([VariationId]) REFERENCES [dbo].[ProductVariation] ([Id])
);

