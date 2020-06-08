CREATE PROCEDURE [dbo].[DeleteAlert]
	@alertId INT
AS
	DELETE FROM Alerts
	WHERE AlertId = @alertId;

		SELECT @@ROWCOUNT;

GRANT EXECUTE ON OBJECT::[dbo].[DeleteAlert] TO nlecaApp; 
GO
