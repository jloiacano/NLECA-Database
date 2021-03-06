﻿CREATE PROCEDURE [dbo].[GetArticleImagesWithSameCheckSum]
	@simpleCheckSum VARCHAR(30)
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
		WHERE img.SimpleCheckSum = @simpleCheckSum
			AND img.IsCurrent = 1;

			
GRANT EXECUTE ON OBJECT::[dbo].[GetArticleImagesWithSameCheckSum] TO nlecaApp; 
GO