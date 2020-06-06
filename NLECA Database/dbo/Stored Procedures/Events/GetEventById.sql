CREATE PROCEDURE [dbo].[GetEventById]
	@eventId INT
AS

	SELECT * FROM Events
	WHERE EventId = @eventId;

GRANT EXECUTE ON OBJECT::[dbo].[GetEventById] TO nlecaApp; 
GO
