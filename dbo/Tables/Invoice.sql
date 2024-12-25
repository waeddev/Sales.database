CREATE TABLE [dbo].[Invoice] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [Date]           DATETIME2 (7)      NOT NULL,
    [QrCode]         NVARCHAR (MAX)     NULL,
    [SerialNumbers]  NVARCHAR (MAX)     NULL,
    [Title]          NVARCHAR (MAX)     NULL,
    [Seller]         NVARCHAR (MAX)     NULL,
    [Buyer]          NVARCHAR (MAX)     NULL,
    [UnitPrice]      FLOAT (53)         NOT NULL,
    [Quantity]       FLOAT (53)         NOT NULL,
    [Discount]       FLOAT (53)         NOT NULL,
    [SubTotal]       FLOAT (53)         NOT NULL,
    [VatValue]       FLOAT (53)         NOT NULL,
    [VatTotal]       FLOAT (53)         NOT NULL,
    [Total]          FLOAT (53)         NOT NULL,
    [IsDelete]       BIT                NOT NULL,
    [AddressId]      INT                NULL,
    [DueDate]        DATETIME2 (7)      DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    [SupplierId]     INT                NULL,
    CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Invoice_Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]),
    CONSTRAINT [FK_Invoice_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Supplier] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Invoice_AddressId]
    ON [dbo].[Invoice]([AddressId] ASC);

