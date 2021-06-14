CREATE TABLE [dbo].[sample_table_history] (
    [c1]           INT           NOT NULL,
    [c2]           CHAR (10)     NULL,
    [c3]           DATETIME      NULL,
    [SysStartTime] DATETIME2 (7) NOT NULL,
    [SysEndTime]   DATETIME2 (7) NOT NULL
)
WITH (DATA_COMPRESSION = PAGE);

