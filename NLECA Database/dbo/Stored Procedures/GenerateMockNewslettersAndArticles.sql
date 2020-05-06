
CREATE PROCEDURE [dbo].[GenerateMockNewslettersAndArticles]
	@totalRowsEffected INT OUTPUT
AS
BEGIN

SET NOCOUNT OFF

DECLARE   @newsletterRowsEffected INT = NULL
		, @articleRowsEffected INT = NULL
		, @currentMonth VARCHAR(7) = (SELECT FORMAT (GETDATE(), 'yyyy-MM'))
		, @nextMonth VARCHAR(7) = (SELECT FORMAT ((DATEADD(MM, 1 , GETDATE())), 'yyyy-MM'))

IF NOT EXISTS (SELECT * FROM Newsletters)
	BEGIN
		INSERT INTO Newsletters 
			(
			CreatedDate
			, CreatedBy
			, Memo
			, DisplayDate
			, PublishedDate
			, IsCurrent
			) 
		VALUES 
			(
			CURRENT_TIMESTAMP
			, 1
			, 'Mock Newsletter 1'
			, @currentMonth
			, '1/1/1753 12:00:00 AM'
			, 1
			)
			, (
			CURRENT_TIMESTAMP
			, 1
			, 'Mock Newsletter 2'
			, @nextMonth
			, '1/1/1753 12:00:00 AM'
			, 0
			);

		SET @newsletterRowsEffected = @@ROWCOUNT;
	END
	
DECLARE @currentNewsletterId INT = (SELECT NewsletterId FROM Newsletters WHERE DisplayDate = @currentMonth)
DECLARE @nextMonthsNewsletterId INT = (SELECT NewsletterId FROM Newsletters WHERE DisplayDate = @nextMonth)

IF NOT EXISTS (SELECT * FROM Articles)
	BEGIN
		INSERT INTO Articles 
			(
			NewsletterId
			, ArticleSequence
			, ArticleType
			, ArticleText
			, AddedBy
			, DateAdded
			) 
		VALUES 
			(
			@currentNewsletterId
			, 1
			, 1
			, 'Mock Article 1 for Mock Newsletter 1'
			, 1
			, CURRENT_TIMESTAMP
			),
			(
			@currentNewsletterId
			, 2
			, 1
			, 'Mock Article 2 for Mock Newsletter 1'
			, 1
			, CURRENT_TIMESTAMP
			),
			(
			@currentNewsletterId
			, 3
			, 1
			, 'Mock Article 3 for Mock Newsletter 1'
			, 1
			, CURRENT_TIMESTAMP
			),
			(
			@nextMonthsNewsletterId
			, 1
			, 1
			, 'Mock Article 1 for Mock Newsletter 2'
			, 1
			, CURRENT_TIMESTAMP
			),
			(
			@nextMonthsNewsletterId
			, 2
			, 1
			, 'Mock Article 2 for Mock Newsletter 2'
			, 1
			, CURRENT_TIMESTAMP
			),
			(
			@nextMonthsNewsletterId
			, 3
			, 1
			, 'Mock Article 3 for Mock Newsletter 2'
			, 1
			, CURRENT_TIMESTAMP
			);

		SET @articleRowsEffected = @@ROWCOUNT;

	END

	SET @totalRowsEffected = @newsletterRowsEffected + @articleRowsEffected;
END
