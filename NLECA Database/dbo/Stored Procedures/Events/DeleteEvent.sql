CREATE PROCEDURE [dbo].[DeleteEvent]
	@eventId	INT
AS
	
	DELETE FROM Events
	WHERE EventId = @eventId;
	
	SELECT @@ROWCOUNT;		

GRANT EXECUTE ON OBJECT::[dbo].[DeleteEvent] TO nlecaApp; 
GO