CREATE TABLE [dbo].[CarOrder] (
    [OrderId]   INT           IDENTITY (1, 1) NOT NULL,
    [Cartype]   VARCHAR (255) NULL,
    [OrderDate] DATETIME      NULL,
    [volume]    INT           NULL,
    [data]      XML           NULL,
    [milage] int null,
    PRIMARY KEY CLUSTERED ([OrderId] ASC)
);

