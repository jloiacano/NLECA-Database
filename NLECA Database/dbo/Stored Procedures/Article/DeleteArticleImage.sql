CREATE PROCEDURE [dbo].[DeleteArticleImage]
	@imageLocation VARCHAR(256)
AS
	DECLARE @rowseffected INT;
	BEGIN
		
		UPDATE Articles
			SET ImageFileLocation = '',
				ArticleType = 0
			WHERE ImageFileLocation = @imageLocation;

		SET @rowseffected = @@ROWCOUNT;

		DELETE FROM ArticleImages
			WHERE ImageLocation = @imageLocation;

		SET @rowseffected = @rowseffected + @@ROWCOUNT;

		SELECT @rowseffected;

	END

GRANT EXECUTE ON OBJECT::[dbo].[DeleteArticleImage] TO nlecaApp; 
GO
