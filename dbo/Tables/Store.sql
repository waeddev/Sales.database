CREATE TABLE [dbo].[Store] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX)     NULL,
    [Address]        NVARCHAR (MAX)     NULL,
    [Phone]          NVARCHAR (MAX)     NULL,
    [Details]        NVARCHAR (MAX)     NULL,
    [IsActive]       BIT                NOT NULL,
    [IsDeleted]      BIT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED ([Id] ASC)
);

