CREATE PROCEDURE [dbo].[GetAllAlerts]
AS

	SELECT * FROM Alerts;

GRANT EXECUTE ON OBJECT::[dbo].[GetAllAlerts] TO nlecaApp; 
GO
