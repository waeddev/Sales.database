CREATE TABLE [dbo].[Roles] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [NameAr]         NVARCHAR (MAX)     NULL,
    [NameEn]         NVARCHAR (MAX)     NULL,
    [IsActive]       BIT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([Id] ASC)
);

