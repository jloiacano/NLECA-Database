CREATE PROCEDURE [dbo].[GetAllCurrentAlerts]
AS

	SELECT * FROM Alerts
	WHERE GETDATE() BETWEEN AlertDate AND AlertDateEnd
		AND IsPublished = 1;

GRANT EXECUTE ON OBJECT::[dbo].[GetAllCurrentAlerts] TO nlecaApp; 
GO
