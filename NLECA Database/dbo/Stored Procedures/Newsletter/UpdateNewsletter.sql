CREATE PROCEDURE [dbo].[UpdateNewsletter]
	@newsletterId INT,
	@createdDate DATETIME,
	@createdBy INT,
	@memo VARCHAR(256),
	@displayDate VARCHAR(256),
	@publishedDate DATETIME,
	@isCurrent BIT

AS
	DECLARE @rowsEffected INT = 0;

	UPDATE Newsletters
	SET CreatedDate = @createdDate,
		CreatedBy = @createdBy,
		Memo = @memo,
		DisplayDate = @displayDate,
		PublishedDate = @publishedDate,
		IsCurrent = @isCurrent
	WHERE NewsletterId = @newsletterId;

	SET @rowsEffected = @@ROWCOUNT;

	SELECT @rowsEffected;
