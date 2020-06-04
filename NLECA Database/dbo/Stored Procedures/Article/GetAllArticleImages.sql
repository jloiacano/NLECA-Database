CREATE PROCEDURE [dbo].[GetAllArticleImages]

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
			LEFT JOIN Newsletters AS n 
				ON a.NewsletterId = n.NewsletterId

GRANT EXECUTE ON OBJECT::[dbo].[GetAllArticleImages] TO nlecaApp; 
GO