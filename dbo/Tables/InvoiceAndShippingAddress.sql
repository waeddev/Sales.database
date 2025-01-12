﻿CREATE TABLE [dbo].[InvoiceAndShippingAddress] (
    [ID]                   INT                IDENTITY (1, 1) NOT NULL,
    [InvoiceShortNumber]   VARCHAR (255)      NOT NULL,
    [ShippingShortNumber]  VARCHAR (255)      NULL,
    [InvoiceBuildingNo]    VARCHAR (255)      NOT NULL,
    [ShippingBuildingNo]   VARCHAR (255)      NULL,
    [InvoiceAdditionalNo]  VARCHAR (255)      NOT NULL,
    [ShippingAdditionalNo] VARCHAR (255)      NULL,
    [InvoiceCity]          VARCHAR (255)      NOT NULL,
    [ShippingCity]         VARCHAR (255)      NULL,
    [InvoiceStreetName]    VARCHAR (255)      NOT NULL,
    [ShippingStreetName]   VARCHAR (255)      NULL,
    [InvoiceDistrictName]  VARCHAR (255)      NOT NULL,
    [ShippingDistrictName] VARCHAR (255)      NULL,
    [InvoicePostalCode]    VARCHAR (225)      NOT NULL,
    [ShippingPostalCode]   VARCHAR (225)      NULL,
    [CustomerId]           INT                NOT NULL,
    [Created]              DATETIMEOFFSET (7) NULL,
    [CreatedBy]            NVARCHAR (250)     NULL,
    [LastModified]         DATETIMEOFFSET (7) NULL,
    [LastModifiedBy]       NVARCHAR (250)     NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([ID])
);

