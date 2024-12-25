CREATE TABLE [dbo].[Users] (
    [Id]               INT                IDENTITY (1, 1) NOT NULL,
    [UserNumber]       INT                NOT NULL,
    [UserName]         NVARCHAR (200)     NULL,
    [Password]         NVARCHAR (200)     NOT NULL,
    [Mobile]           NVARCHAR (MAX)     NULL,
    [Email]            NVARCHAR (200)     NOT NULL,
    [Address]          NVARCHAR (MAX)     NULL,
    [Gender]           INT                NOT NULL,
    [IsActive]         BIT                NOT NULL,
    [IsDeleted]        BIT                NOT NULL,
    [TokenExpiredDate] DATETIME2 (7)      NULL,
    [UserId]           INT                NULL,
    [Created]          DATETIMEOFFSET (7) NULL,
    [CreatedBy]        NVARCHAR (250)     NULL,
    [LastModified]     DATETIMEOFFSET (7) NULL,
    [LastModifiedBy]   NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Users_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Email]
    ON [dbo].[Users]([Email] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_UserId]
    ON [dbo].[Users]([UserId] ASC);

