CREATE PROCEDURE [dbo].[UnpublishAlert]
	@alertId INT
AS
		UPDATE Alerts
		SET IsPublished = 0
		WHERE AlertId = @alertId;

		SELECT @@ROWCOUNT;

GRANT EXECUTE ON OBJECT::[dbo].[UnpublishAlert] TO nlecaApp; 
GO
