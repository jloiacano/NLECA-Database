CREATE PROCEDURE [dbo].[UpdateArticleSequence]
	@articleId INT,
	@updatedArticleSequence INT
AS
	DECLARE @rowsEffected INT = 0;

SET NOCOUNT OFF

	UPDATE Articles

	SET ArticleSequence = @updatedArticleSequence

	WHERE ArticleId = @articleId;

	SET @rowsEffected = @@ROWCOUNT;

	SELECT @rowsEffected;
