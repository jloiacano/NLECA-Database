CREATE PROCEDURE [dbo].[GetPublishedNewsletter]
AS

BEGIN

	SELECT * FROM Newsletters 
	WHERE IsCurrent = 1;

END

GRANT EXECUTE ON OBJECT::[dbo].[GetPublishedNewsletter] TO nlecaApp; 
GO
