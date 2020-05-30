CREATE PROCEDURE [dbo].[AddImageToArticleImages]
	@uploadedByUserId VARCHAR(50),
	@uploadedByUserName VARCHAR(50),
	@simpleCheckSum VARCHAR(30),
	@imageName VARCHAR(50),
	@imageLocation VARCHAR(200)
AS

BEGIN
	DECLARE @rowsEffected INT = 0;

	INSERT INTO ArticleImages (UploadedByUserId, UploadedByUserName, IsCurrent, SimpleCheckSum, ImageName, ImageLocation)
	VALUES (@uploadedByUserId, @uploadedByUserName, 1, @simpleCheckSum, @imageName, @imageLocation);

	SET @rowsEffected = @@ROWCOUNT;

	SELECT @rowsEffected;
END


GRANT EXECUTE ON OBJECT::[dbo].[AddImageToArticleImages] TO nlecaApp; 
GO


