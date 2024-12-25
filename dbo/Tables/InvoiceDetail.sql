CREATE TABLE [dbo].[InvoiceDetail] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [SerialNumbers]  NVARCHAR (MAX)     NULL,
    [Description]    NVARCHAR (MAX)     NULL,
    [UnitPrice]      FLOAT (53)         NOT NULL,
    [Quantity]       FLOAT (53)         NOT NULL,
    [Discount]       FLOAT (53)         NOT NULL,
    [SubTotal]       FLOAT (53)         NOT NULL,
    [VatValue]       FLOAT (53)         NOT NULL,
    [VatTotal]       FLOAT (53)         NOT NULL,
    [Total]          FLOAT (53)         NOT NULL,
    [StoreId]        INT                NULL,
    [PaymentTerms]   FLOAT (53)         DEFAULT ((0.000000000000000e+000)) NOT NULL,
    [Created]        DATETIMEOFFSET (7) NULL,
    [CreatedBy]      NVARCHAR (250)     NULL,
    [LastModified]   DATETIMEOFFSET (7) NULL,
    [LastModifiedBy] NVARCHAR (250)     NULL,
    CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceDetail_Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_InvoiceDetail_StoreId]
    ON [dbo].[InvoiceDetail]([StoreId] ASC);

