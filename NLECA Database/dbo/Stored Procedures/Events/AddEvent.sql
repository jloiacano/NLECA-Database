CREATE PROCEDURE [dbo].[AddEvent]
	@addedByUserId			INT
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
	INSERT INTO Events (
		AddedByUserId
		, AddedByUserName
		, DateAdded
		, EventTitle
		, IsAllDayEvent
		, IsMultiDayEvent
		, EventDate
		, EventDateEnd
		, DateIsFinalized
		, EventLocation
		, EventHost
		, EventShortDetails
		, EventLongDetails
		, EventImageLocation
		)
	VALUES (
	@addedByUserId
	, @addedByUserName
	, @dateAdded
	, @eventTitle
	, @isAllDayEvent
	, @isMultiDayEvent
	, @eventDate
	, @eventDateEnd
	, @dateIsFinalized
	, @eventLocation
	, @eventHost
	, @eventShortDetails
	, @eventLongDetails
	, @eventImageLocation
	);

	SELECT @@ROWCOUNT;

GRANT EXECUTE ON OBJECT::[dbo].[AddEvent] TO nlecaApp; 
GO
