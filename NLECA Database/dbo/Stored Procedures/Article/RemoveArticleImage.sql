CREATE PROCEDURE [dbo].[RemoveArticleImage]
	@imageLocation VARCHAR(256)
AS
	BEGIN
		
		UPDATE ArticleImages
		SET IsCurrent = 0
		WHERE ImageLocation = @imageLocation;

		SELECT @@ROWCOUNT;

	END

GRANT EXECUTE ON OBJECT::[dbo].[RemoveArticleImage] TO nlecaApp; 
GO
