﻿CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   NVARCHAR (256) NOT NULL,
    [UserName]             NVARCHAR (256) NULL,
    [NormalizedUserName]   NVARCHAR (256) NULL,
    [FirstName]            NVARCHAR (256) NULL,
    [LastName]             NVARCHAR (256) NULL,
    [Email]                NVARCHAR (256) NULL,
    [NormalizedEmail]      NVARCHAR (256) NULL,
    [EmailConfirmed]       BIT            NOT NULL,
    [PasswordHash]         NVARCHAR (MAX) NULL,
    [SecurityStamp]        NVARCHAR (MAX) NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX) NULL,
    [PhoneNumber]          NVARCHAR (20)  NULL,
    [PhoneNumberConfirmed] BIT            NOT NULL,
    [TwoFactorEnabled]     BIT            NOT NULL,
    [LockoutEnd]           DATETIME       NULL,
    [LockoutEnabled]       BIT            NOT NULL,
    [AccessFailedCount]    INT            NOT NULL,
    [Created]              DATETIME       DEFAULT (getdate()) NULL,
    [CreatedBy]            NVARCHAR (256) NULL,
    [LastModified]         DATETIME       DEFAULT (getdate()) NULL,
    [LastModifiedBy]       NVARCHAR (256) NULL,
    [ImageUrl]             NVARCHAR (250) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

