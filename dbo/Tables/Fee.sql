CREATE TABLE [dbo].[Fee] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [FeeName]        NVARCHAR (MAX)     NOT NULL,
    [FeePrice]       FLOAT (53)         NOT NULL,
    [FeeTotal]       FLOAT (53)         NOT NULL,
    [EditablePrice]  BIT                NOT NULL,
    [IsActive]       BIT                NOT NULL,
    [FeeData]        NVARCHAR (MAX)     NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_Fee] PRIMARY KEY CLUSTERED ([Id] ASC)
);

