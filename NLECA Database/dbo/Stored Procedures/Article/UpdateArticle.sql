CREATE PROCEDURE [dbo].[UpdateArticle]
	@articleId INT,
	@newsletterId INT,
	@articleSequence INT,
	@imageFileLocation VARCHAR(256),
	@articleType INT,
	@articleTableOfContentsText VARCHAR(256),
	@articleTitle VARCHAR(512),
	@articleText VARCHAR(MAX),
	@addedBy INT,
	@dateAdded DATETIME
AS
	DECLARE @rowsEffected INT = 0;

	UPDATE Articles
	SET NewsletterId = @newsletterId,
		ArticleSequence = @articleSequence,
		ImageFileLocation = @imageFileLocation,
		ArticleType = @articleType,
		ArticleTableOfContentsText = @articleTableOfContentsText,
		ArticleTitle = @articleTitle,
		ArticleText = @articleText,
		AddedBy = @addedBy,
		DateAdded = @dateAdded
	WHERE ArticleId = @articleId;

	SET @rowsEffected = @@ROWCOUNT;

	SELECT @rowsEffected;
