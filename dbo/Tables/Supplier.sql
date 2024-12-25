CREATE TABLE [dbo].[Supplier] (
    [Id]              INT                IDENTITY (1, 1) NOT NULL,
    [Number]          INT                NOT NULL,
    [Name]            NVARCHAR (MAX)     NULL,
    [Email]           NVARCHAR (MAX)     NULL,
    [Phone]           NVARCHAR (MAX)     NULL,
    [SupplierType]    NVARCHAR (MAX)     NULL,
    [SecoundNo]       INT                NOT NULL,
    [IsActive]        BIT                NOT NULL,
    [Created]         DATETIMEOFFSET (7) NULL,
    [CreatedBy]       NVARCHAR (250)     NULL,
    [LastModified]    DATETIMEOFFSET (7) NULL,
    [LastModifiedBy]  NVARCHAR (250)     NULL,
    [NationalAddress] NVARCHAR (15)      NULL,
    [CompanyName]     NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED ([Id] ASC)
);

