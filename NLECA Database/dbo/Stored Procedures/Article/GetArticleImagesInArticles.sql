CREATE PROCEDURE [dbo].[GetArticleImagesInArticles]
AS
	SELECT 
		a.ArticleId
		, a.ArticleTitle
		, n.NewsletterId
		, n.DisplayDate
		, n.Memo
		, img.UploadedByUserId
		, img.UploadedByUserName
		, img.IsCurrent
		, img.ImageName
		, img.ImageLocation
		FROM ArticleImages AS img
			LEFT JOIN Articles AS a 
				ON img.ImageLocation = a.ImageFileLocation
			JOIN Newsletters AS n 
				ON a.NewsletterId = n.NewsletterId
		WHERE img.IsCurrent = 1;

GRANT EXECUTE ON OBJECT::[dbo].[GetArticleImagesInArticles] TO nlecaApp; 
GO
