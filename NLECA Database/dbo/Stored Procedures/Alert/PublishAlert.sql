CREATE PROCEDURE [dbo].[PublishAlert]
	@alertId INT
AS
		UPDATE Alerts
		SET IsPublished = 1
		WHERE AlertId = @alertId;

		SELECT @@ROWCOUNT;

GRANT EXECUTE ON OBJECT::[dbo].[PublishAlert] TO nlecaApp; 
GO
