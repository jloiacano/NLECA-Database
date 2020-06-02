CREATE PROCEDURE [dbo].[CheckIfArticleImageExists]
	@simpleCheckSum VARCHAR(50)
AS
BEGIN
	SELECT * FROM ArticleImages WHERE SimpleCheckSum = @simpleCheckSum AND IsCurrent = 1;
	SELECT @@ROWCOUNT;
END
GO
	
GRANT EXECUTE ON OBJECT::[dbo].[CheckIfArticleImageExists] TO nlecaApp; 
GO