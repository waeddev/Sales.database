CREATE TABLE [dbo].[Attribute] (
    [Id]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (250) NOT NULL,
    [IsActive]  BIT            NULL,
    [IsDeleted] BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

