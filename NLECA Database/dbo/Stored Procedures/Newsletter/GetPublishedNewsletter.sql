CREATE PROCEDURE [dbo].[GetPublishedNewsletter]
AS
	SELECT TOP 1 * FROM Newsletters ORDER BY CreatedDate DESC;
    --TODO - J - Update select statement to reflect "published"
