CREATE PROCEDURE [dbo].[DeleteArticle]
	@articleId INT

AS
	DECLARE @rowsEffected INT = 0;

	DELETE FROM Articles WHERE ArticleId = @articleId;
	SET @rowsEffected = @@ROWCOUNT;

SELECT @rowsEffected;
