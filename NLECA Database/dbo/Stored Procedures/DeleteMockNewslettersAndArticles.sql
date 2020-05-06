
CREATE PROCEDURE [dbo].[DeleteMockNewslettersAndArticles]
	@totalRowsEffected INT OUTPUT
AS
BEGIN

SET NOCOUNT OFF

DECLARE   @newsletterRowsEffected INT = NULL
		, @articleRowsEffected INT = NULL

DELETE FROM Newsletters WHERE CreatedBy = 1 AND Memo LIKE 'Mock Newsletter [12]';

		SET @newsletterRowsEffected = @@ROWCOUNT;
		
DELETE FROM Articles WHERE ArticleText LIKE 'Mock Article [123] for Mock Newsletter [12]';

		SET @articleRowsEffected = @@ROWCOUNT;

	SET @totalRowsEffected = @newsletterRowsEffected + @articleRowsEffected;
END
