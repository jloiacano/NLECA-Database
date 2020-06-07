CREATE PROCEDURE [dbo].[GetAllPublishedEvents]
AS

	SELECT * FROM Events
	WHERE IsPublished = 1;

GRANT EXECUTE ON OBJECT::[dbo].[GetAllPublishedEvents] TO nlecaApp; 
GO
