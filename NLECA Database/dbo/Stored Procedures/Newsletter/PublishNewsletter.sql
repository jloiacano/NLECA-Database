CREATE PROCEDURE [dbo].[PublishNewsletter]
	@newsletterId INT
AS
	DECLARE @rowsEffected INT;

	BEGIN
		UPDATE Newsletters
		SET IsCurrent = 0;

		SET @rowsEffected = @@ROWCOUNT;

		UPDATE Newsletters
		SET IsCurrent = 1,
			PublishedDate = GETDATE(),
			HasBeenPublished = 1
		WHERE NewsletterId = @newsletterId;

		SET @rowsEffected = @rowsEffected + @@ROWCOUNT;
	END

	SELECT @rowsEffected;

GRANT EXECUTE ON OBJECT::[dbo].[PublishNewsletter] TO nlecaApp; 
GO