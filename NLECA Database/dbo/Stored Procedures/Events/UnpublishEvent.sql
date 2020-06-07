CREATE PROCEDURE [dbo].[UnpublishEvent]
	@eventId INT
AS
		UPDATE Events
		SET IsPublished = 0
		WHERE EventId = @eventId;

		SELECT @@ROWCOUNT;

GRANT EXECUTE ON OBJECT::[dbo].[UnpublishEvent] TO nlecaApp; 
GO

