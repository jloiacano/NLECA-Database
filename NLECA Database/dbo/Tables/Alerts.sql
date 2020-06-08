CREATE TABLE [dbo].[Alerts]
(
	[AlertId]				INT		IDENTITY (1, 1)		NOT NULL,
	[AddedByUserId]			INT							NOT NULL,
	[AddedByUserName]		VARCHAR(50)					NOT NULL,
	[DateAdded]				DATETIME					NOT NULL DEFAULT GETDATE(),
	[AlertTitle]			VARCHAR(256)				NULL,
	[AlertDate]				DATETIME					NOT NULL DEFAULT GETDATE(),
	[AlertDateEnd]			DATETIME					NOT NULL DEFAULT dateadd(year, -1, getdate()),
	[AlertShortDetails]		VARCHAR(512)				NULL,
	[AlertLongDetails]		VARCHAR(MAX)				NULL,
	[AlertImageLocation]	VARCHAR(256)				NULL, 
    [IsPublished]			BIT NOT NULL DEFAULT 0,
)
