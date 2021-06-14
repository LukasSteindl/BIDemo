CREATE TABLE [dbo].[sample_table_2] (
    [c1]           INT                                         NOT NULL,
    [c2]           CHAR (10)                                   NULL,
    [c3]           DATETIME                                    NULL,
    [SysStartTime] DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [SysEndTime]   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    CONSTRAINT [PK_sampletable] PRIMARY KEY CLUSTERED ([c1] ASC),
    PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[sample_table_history], DATA_CONSISTENCY_CHECK=ON));

