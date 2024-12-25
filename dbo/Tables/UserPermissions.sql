CREATE TABLE [dbo].[UserPermissions] (
    [UserId]       NVARCHAR (256) NOT NULL,
    [PermissionId] NVARCHAR (450) NOT NULL,
    [CreatedBy]    NVARCHAR (450) NULL,
    [CreatedOn]    DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED ([UserId] ASC, [PermissionId] ASC),
    CONSTRAINT [FK_UserPermissions_Permissions] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permissions] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_UserPermissions_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserPermissions_PermissionId]
    ON [dbo].[UserPermissions]([PermissionId] ASC);

