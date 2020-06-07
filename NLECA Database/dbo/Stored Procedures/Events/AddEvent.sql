CREATE PROCEDURE [dbo].[AddEvent]
	@addedByUserId			INT
	, @addedByUserName		VARCHAR(50)

AS
	INSERT INTO Events (
		AddedByUserId
		, AddedByUserName
		)
	OUTPUT INSERTED.EventId
	VALUES (
	@addedByUserId
	, @addedByUserName
	);

GRANT EXECUTE ON OBJECT::[dbo].[AddEvent] TO nlecaApp; 
GO
