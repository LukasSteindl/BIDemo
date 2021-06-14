CREATE TABLE [dbo].[DimKunde] (
    [Id]                INT                                         NOT NULL,
    [Wohnort]           NCHAR (10)                                  NULL,
    [GueltigkeitsDatum] DATETIME2 (7)                               NULL,
    [KontoNummer]       INT                                         NULL,
    [SysStart]          DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [SysEnd]            DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC) WITH (FILLFACTOR = 70),
    PERIOD FOR SYSTEM_TIME ([SysStart], [SysEnd])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[DimKunde_HISTORY], DATA_CONSISTENCY_CHECK=ON));

