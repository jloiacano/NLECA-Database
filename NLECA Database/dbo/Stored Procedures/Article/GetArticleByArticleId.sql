CREATE PROCEDURE [dbo].[GetArticleByArticleId]
	@articleId INT
AS
	SELECT * FROM Articles WHERE ArticleId = @articleId;