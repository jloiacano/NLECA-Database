CREATE PROCEDURE [dbo].[GetAllPublishedAlerts]
AS

	SELECT * FROM Alerts
	WHERE IsPublished = 1;

GRANT EXECUTE ON OBJECT::[dbo].[GetAllPublishedAlerts] TO nlecaApp; 
GO
