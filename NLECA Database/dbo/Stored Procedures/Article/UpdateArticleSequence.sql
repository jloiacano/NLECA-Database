CREATE PROCEDURE [dbo].[UpdateArticleSequence]
	@newsletterId INT,
	@oldArticleSequence INT,
	@updatedArticleSequence INT,
	@totalRowsEffected INT OUTPUT
AS

SET NOCOUNT OFF

	UPDATE Articles

	SET ArticleSequence = @updatedArticleSequence

	WHERE NewsletterId = @newsletterId AND ArticleSequence = @oldArticleSequence;

	SET @totalRowsEffected = @@ROWCOUNT