CREATE TABLE [dbo].[AspNetRoleClaims] (
    [Id]         NVARCHAR (256) NOT NULL,
    [RoleId]     NVARCHAR (256) NOT NULL,
    [ClaimType]  NVARCHAR (MAX) NULL,
    [ClaimValue] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id])
);

