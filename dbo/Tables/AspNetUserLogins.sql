CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider]       NVARCHAR (256) NOT NULL,
    [ProviderKey]         NVARCHAR (256) NOT NULL,
    [ProviderDisplayName] NVARCHAR (256) NULL,
    [UserId]              NVARCHAR (256) NOT NULL,
    PRIMARY KEY CLUSTERED ([LoginProvider] ASC, [ProviderKey] ASC, [UserId] ASC),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

