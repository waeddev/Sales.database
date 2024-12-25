CREATE TABLE [dbo].[Countries] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX)     NULL,
    [NameAr]         NVARCHAR (MAX)     NULL,
    [NameEn]         NVARCHAR (MAX)     NULL,
    [IsActive]       BIT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED ([Id] ASC)
);

