CREATE TABLE [dbo].[Events]
(
	[EventId]				INT		IDENTITY (1, 1)		NOT NULL,
	[AddedByUserId]			INT							NOT NULL,
	[AddedByUserName]		VARCHAR(50)					NOT NULL,
	[DateAdded]				DATETIME					NOT NULL,
	[EventTitle]			VARCHAR(256)				NOT NULL,
	[IsAllDayEvent]			BIT							NOT NULL DEFAULT 0,
	[IsMultiDayEvent]		BIT							NOT NULL DEFAULT 0,
	[EventDate]				DATETIME					NOT NULL,
	[EventDateEnd]			DATETIME					NOT NULL,
	[DateIsFinalized]		BIT							NOT NULL DEFAULT 0,
	[EventLocation]			VARCHAR(512)				NOT NULL,
	[EventHost]				VARCHAR(256)				NOT NULL,
	[EventShortDetails]		VARCHAR(512)				NOT NULL,
	[EventLongDetails]		VARCHAR(MAX)				NOT NULL,
	[EventImageLocation]	VARCHAR(256)				NULL,
)
