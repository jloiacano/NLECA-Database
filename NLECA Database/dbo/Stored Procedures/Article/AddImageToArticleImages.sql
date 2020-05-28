CREATE PROCEDURE [dbo].[AddImageToArticleImages]
	@articleId int = 0,
	@md5Hash VARCHAR(50),
	@imageName VARCHAR(50),
	@imageLocation VARCHAR(200)
AS

BEGIN
	DECLARE @rowsEffected INT = 0;

	INSERT INTO ArticleImages (ArticleId, Md5Hash, ImageName, ImageLocation)
	VALUES (@articleId, @md5Hash, @imageName, @imageLocation);

	SET @rowsEffected = @@ROWCOUNT;

	SELECT @rowsEffected;
END


GRANT EXECUTE ON OBJECT::[dbo].[AddImageToArticleImages] TO nlecaApp; 
GO


