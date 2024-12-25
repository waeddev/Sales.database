CREATE TABLE [dbo].[Permissions] (
    [Id]             NVARCHAR (450) NOT NULL,
    [Name]           NVARCHAR (256) NOT NULL,
    [NormalizedName] NVARCHAR (256) NOT NULL,
    [Description]    NVARCHAR (MAX) NULL,
    [Module]         NVARCHAR (128) NULL,
    [Action]         NVARCHAR (128) NULL,
    [CreatedBy]      NVARCHAR (450) NULL,
    [CreatedOn]      DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [LastModifiedBy] NVARCHAR (450) NULL,
    [LastModifiedOn] DATETIME2 (7)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Permissions_NormalizedName]
    ON [dbo].[Permissions]([NormalizedName] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Permissions_Module]
    ON [dbo].[Permissions]([Module] ASC);

