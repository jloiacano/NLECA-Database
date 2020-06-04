CREATE PROCEDURE [dbo].[GetAllNewsletters]
AS
	SELECT * FROM Newsletters;



GRANT EXECUTE ON OBJECT::[dbo].[GetAllNewsletters] TO nlecaApp; 
GO