CREATE TABLE [dbo].[Delegates] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [DelegateName] VARCHAR (20) NOT NULL,
    [Phone]        VARCHAR (10) NULL,
    [DelegateType] VARCHAR (15) NOT NULL,
    [CompanyName]  VARCHAR (25) NULL,
    [CompanyPhone] VARCHAR (15) NULL,
    [IsActive]     BIT          NOT NULL,
    [IsDeleted]    BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

