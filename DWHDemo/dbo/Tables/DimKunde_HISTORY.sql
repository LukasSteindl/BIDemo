CREATE TABLE [dbo].[DimKunde_HISTORY] (
    [Id]                INT           NOT NULL,
    [Wohnort]           NCHAR (10)    NULL,
    [GueltigkeitsDatum] DATETIME2 (7) NULL,
    [KontoNummer]       INT           NULL,
    [SysStart]          DATETIME2 (7) NOT NULL,
    [SysEnd]            DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_DimKunde_HISTORY]
    ON [dbo].[DimKunde_HISTORY]([SysEnd] ASC, [SysStart] ASC) WITH (FILLFACTOR = 70);

