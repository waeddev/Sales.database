CREATE TABLE [dbo].[AspNetUserRoles] (
    [UserId] NVARCHAR (256) NOT NULL,
    [RoleId] NVARCHAR (256) NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC),
    FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

