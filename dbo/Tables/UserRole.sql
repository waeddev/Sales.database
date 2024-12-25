CREATE TABLE [dbo].[UserRole] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [UserId]         INT                NOT NULL,
    [RoleId]         INT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserRole_Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]),
    CONSTRAINT [FK_UserRole_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_UserRole_RoleId]
    ON [dbo].[UserRole]([RoleId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserRole_UserId_RoleId]
    ON [dbo].[UserRole]([UserId] ASC, [RoleId] ASC);

