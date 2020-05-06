CREATE PROCEDURE [dbo].[UpdateArticle]
	@articleId INT,
	@newsletterId INT,
	@articleSequence INT,
	@imageFileLocation VARCHAR(256),
	@articleType INT,
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
		ArticleText = @articleText,
		AddedBy = @addedBy,
		DateAdded = @dateAdded
	WHERE ArticleId = @articleId;

	SET @rowsEffected = @@ROWCOUNT;

	SELECT @rowsEffected;
