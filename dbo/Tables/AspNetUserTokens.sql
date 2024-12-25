CREATE TABLE [dbo].[AspNetUserTokens] (
    [UserId]        NVARCHAR (256) NOT NULL,
    [LoginProvider] NVARCHAR (256) NOT NULL,
    [Name]          NVARCHAR (256) NOT NULL,
    [Value]         NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC, [LoginProvider] ASC, [Name] ASC),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

