CREATE PROCEDURE [dbo].[GetAllFutureAlerts]
AS

	SELECT * FROM Alerts
	WHERE AlertDateEnd >= GETDATE();

GRANT EXECUTE ON OBJECT::[dbo].[GetAllFutureAlerts] TO nlecaApp; 
GO
