CREATE TABLE [dbo].[Customers] (
    [ID]             INT                IDENTITY (1, 1) NOT NULL,
    [FirstName]      VARCHAR (50)       NOT NULL,
    [FamilyName]     VARCHAR (50)       NOT NULL,
    [Email]          VARCHAR (255)      NULL,
    [Phone]          VARCHAR (225)      NOT NULL,
    [IsActive]       BIT                DEFAULT ((1)) NOT NULL,
    [IsDeleted]      BIT                DEFAULT ((0)) NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);

