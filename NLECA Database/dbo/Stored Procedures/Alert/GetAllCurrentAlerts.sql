CREATE PROCEDURE [dbo].[GetAllCurrentAlerts]
AS

DECLARE @now DATETIME = GETDATE();

	SELECT * FROM Alerts
	WHERE IsPublished = 1
		AND @now BETWEEN AlertDate AND AlertDateEnd;

GRANT EXECUTE ON OBJECT::[dbo].[GetAllCurrentAlerts] TO nlecaApp; 
GO
