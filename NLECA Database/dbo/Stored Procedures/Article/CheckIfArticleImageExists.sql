CREATE PROCEDURE [dbo].[CheckIfArticleImageExists]
	@md5 VARCHAR(50)
AS
BEGIN
	SELECT * FROM ArticleImages WHERE Md5Hash = @md5;
END
GO
	
GRANT EXECUTE ON OBJECT::[dbo].[CheckIfArticleImageExists] TO nlecaApp; 
GO