CREATE TABLE [dbo].[Categories] (
    [Id]               INT                IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (MAX)     NULL,
    [IsActive]         BIT                NOT NULL,
    [Created]          DATETIMEOFFSET (7) NULL,
    [CreatedBy]        NVARCHAR (250)     NULL,
    [LastModified]     DATETIMEOFFSET (7) NULL,
    [LastModifiedBy]   NVARCHAR (250)     NULL,
    [ParentCategoryId] INT                NULL,
    [Level]            INT                DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Categories_ParentCategory] FOREIGN KEY ([ParentCategoryId]) REFERENCES [dbo].[Categories] ([Id])
);

