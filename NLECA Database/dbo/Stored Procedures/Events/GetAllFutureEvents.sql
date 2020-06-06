CREATE PROCEDURE [dbo].[GetAllFutureEvents]
AS

	SELECT * FROM Events
	WHERE EventDateEnd >= GETDATE();

GRANT EXECUTE ON OBJECT::[dbo].[GetAllFutureEvents] TO nlecaApp; 
GO
