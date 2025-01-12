CREATE TYPE [dbo].[AttributeTableType] AS TABLE (
    [TempId]           INT            NULL,
    [AttributeId]      BIGINT         NULL,
    [AttributeValueId] BIGINT         NULL,
    [Value]            NVARCHAR (MAX) NULL);
GO

