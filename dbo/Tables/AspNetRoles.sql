CREATE TABLE [dbo].[AspNetRoles] (
    [Id]               NVARCHAR (256) NOT NULL,
    [Name]             NVARCHAR (256) NOT NULL,
    [ConcurrencyStamp] NVARCHAR (MAX) NULL,
    [NormalizedName]   NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

