CREATE TABLE [dbo].[AccountBank] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [AccountNo]      NVARCHAR (MAX)     NULL,
    [Name]           NVARCHAR (MAX)     NULL,
    [Country]        NVARCHAR (MAX)     NULL,
    [Currency]       NVARCHAR (MAX)     NULL,
    [IBAN]           NVARCHAR (MAX)     NULL,
    [SupplierId]     INT                NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_AccountBank] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AccountBank_Supplier_SupplierId] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Supplier] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_AccountBank_SupplierId]
    ON [dbo].[AccountBank]([SupplierId] ASC);

