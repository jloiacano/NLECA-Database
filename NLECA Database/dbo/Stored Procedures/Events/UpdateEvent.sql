CREATE PROCEDURE [dbo].[UpdateEvent]
	@eventId int
	, @addedByUserId		INT
	, @addedByUserName		VARCHAR(50)
	, @dateAdded			DATETIME
	, @eventTitle			VARCHAR(256)
	, @isAllDayEvent		BIT
	, @isMultiDayEvent		BIT
	, @eventDate			DATETIME
	, @eventDateEnd			DATETIME
	, @dateIsFinalized		BIT
	, @eventLocation		VARCHAR(512)
	, @eventHost			VARCHAR(256)
	, @eventShortDetails	VARCHAR(512)
	, @eventLongDetails		VARCHAR(MAX)
	, @eventImageLocation	VARCHAR(256)
AS

	UPDATE Events
	SET 
		AddedByUserId = @addedByUserId
		, AddedByUserName = @addedByUserName
		, DateAdded = @dateAdded
		, EventTitle = @eventTitle
		, IsAllDayEvent = @isAllDayEvent
		, IsMultiDayEvent = @isMultiDayEvent
		, EventDate = @eventDate
		, EventDateEnd = @eventDateEnd
		, DateIsFinalized = @dateIsFinalized
		, EventLocation = @eventLocation
		, EventHost = @eventHost
		, EventShortDetails = @eventShortDetails
		, EventLongDetails = @eventLongDetails
		, EventImageLocation = @eventImageLocation
	WHERE EventId = @eventId;

	SELECT @@ROWCOUNT;		

GRANT EXECUTE ON OBJECT::[dbo].[UpdateEvent] TO nlecaApp; 
GO
