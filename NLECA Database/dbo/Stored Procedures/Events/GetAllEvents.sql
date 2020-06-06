CREATE PROCEDURE [dbo].[GetAllEvents]
AS

	SELECT * FROM Events;

GRANT EXECUTE ON OBJECT::[dbo].[GetAllEvents] TO nlecaApp; 
GO