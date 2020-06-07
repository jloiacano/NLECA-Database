CREATE PROCEDURE [dbo].[PublishEvent]
	@eventId INT
AS
		UPDATE Events
		SET IsPublished = 1
		WHERE EventId = @eventId;

		SELECT @@ROWCOUNT;

GRANT EXECUTE ON OBJECT::[dbo].[PublishEvent] TO nlecaApp; 
GO
