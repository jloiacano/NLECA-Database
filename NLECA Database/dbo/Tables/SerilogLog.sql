﻿CREATE TABLE [dbo].[SerilogLog] (
    [Id]              INT                NOT NULL,
    [Message]         NVARCHAR (MAX)     NULL,
    [MessageTemplate] NVARCHAR (MAX)     NULL,
    [Level]           NVARCHAR (128)     NULL,
    [TimeStamp]       DATETIMEOFFSET (7) NOT NULL,
    [Exception]       NVARCHAR (MAX)     NULL,
    [Properties]      XML                NULL,
    [LogEvent]        NVARCHAR (MAX)     NULL
);

