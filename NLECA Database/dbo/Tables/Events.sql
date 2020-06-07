CREATE TABLE [dbo].[Events]
(
	[EventId]				INT		IDENTITY (1, 1)		NOT NULL,
	[AddedByUserId]			INT							NOT NULL,
	[AddedByUserName]		VARCHAR(50)					NOT NULL,
	[DateAdded]				DATETIME					NOT NULL DEFAULT GETDATE(),
	[EventTitle]			VARCHAR(256)				NULL,
	[IsAllDayEvent]			BIT							NOT NULL DEFAULT 0,
	[IsMultiDayEvent]		BIT							NOT NULL DEFAULT 0,
	[EventDate]				DATETIME					NOT NULL DEFAULT GETDATE(),
	[EventDateEnd]			DATETIME					NOT NULL DEFAULT GETDATE(),
	[DateIsFinalized]		BIT							NOT NULL DEFAULT 0,
	[EventLocation]			VARCHAR(512)				NULL,
	[EventHost]				VARCHAR(256)				NULL,
	[EventShortDetails]		VARCHAR(512)				NULL,
	[EventLongDetails]		VARCHAR(MAX)				NULL,
	[EventImageLocation]	VARCHAR(256)				NULL, 
    [IsPublished] BIT NOT NULL DEFAULT 0,
)
