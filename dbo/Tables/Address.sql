CREATE TABLE [dbo].[Address] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [City]           NVARCHAR (MAX)     NULL,
    [DistrictName]   NVARCHAR (MAX)     NULL,
    [State]          NVARCHAR (MAX)     NULL,
    [StreetName]     NVARCHAR (MAX)     NULL,
    [ZipCode]        NVARCHAR (MAX)     NULL,
    [BuildingNo]     NVARCHAR (MAX)     NULL,
    [AdditionalNo]   NVARCHAR (MAX)     NULL,
    [CountryIde]     INT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    [SupplierId]     INT                NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Address_Countries_CountryId] FOREIGN KEY ([CountryIde]) REFERENCES [dbo].[Countries] ([Id]),
    CONSTRAINT [FK_Address_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Supplier] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Address_CountryId]
    ON [dbo].[Address]([CountryIde] ASC);

