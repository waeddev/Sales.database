CREATE TABLE [dbo].[Pos] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [PosName]        NVARCHAR (MAX)     NULL,
    [PosVat]         NVARCHAR (MAX)     NULL,
    [PosPhone]       NVARCHAR (MAX)     NULL,
    [PosEmail]       NVARCHAR (MAX)     NULL,
    [PosAddress]     NVARCHAR (MAX)     NULL,
    [IsActive]       BIT                NOT NULL,
    [UserId]         INT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Pos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Pos_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Pos_UserId]
    ON [dbo].[Pos]([UserId] ASC);

