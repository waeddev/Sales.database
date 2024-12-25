CREATE TABLE [dbo].[RolePermissions] (
    [RoleId]       NVARCHAR (256) NOT NULL,
    [PermissionId] NVARCHAR (450) NOT NULL,
    [CreatedBy]    NVARCHAR (450) NULL,
    [CreatedOn]    DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED ([RoleId] ASC, [PermissionId] ASC),
    CONSTRAINT [FK_RolePermissions_Permissions] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permissions] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_RolePermissions_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RolePermissions_PermissionId]
    ON [dbo].[RolePermissions]([PermissionId] ASC);

