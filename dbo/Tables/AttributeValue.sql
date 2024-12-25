CREATE TABLE [dbo].[AttributeValue] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [Value]       NVARCHAR (MAX) NULL,
    [AttributeId] BIGINT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([Id])
);

