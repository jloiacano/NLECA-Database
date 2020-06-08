CREATE PROCEDURE [dbo].[GetAlertById]
	@alertId INT
AS

	SELECT * FROM Alerts
	WHERE AlertId = @alertId;

GRANT EXECUTE ON OBJECT::[dbo].[GetAlertById] TO nlecaApp; 
GO
