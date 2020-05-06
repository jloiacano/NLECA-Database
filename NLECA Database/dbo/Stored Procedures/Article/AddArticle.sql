CREATE PROCEDURE [dbo].[AddArticle]
	@newsletterId INT,
	@addedBy INT,
	@dateAdded DATETIME,
	@articleId INT OUTPUT
AS
	DECLARE @maxSequence INT = (SELECT ISNULL(MAX(ArticleSequence), 0) FROM Articles WHERE NewsletterId = @newsletterId);
	DECLARE @sequenceToUse INT = '1' + @maxSequence;

	INSERT INTO Articles (NewsletterId, ArticleSequence, AddedBy, DateAdded)
	OUTPUT INSERTED.ArticleId
	VALUES(@newsletterId, @sequenceToUse, @addedBy, @dateAdded);