CREATE PROCEDURE [dbo].[UnpublishNewsletter]
		@newsletterId INT
AS
	DECLARE @rowsEffected INT;

	BEGIN
		UPDATE Newsletters
		SET IsCurrent = 0
		WHERE NewsletterId = @newsletterId;

		SET @rowsEffected = @@ROWCOUNT;
	END

	SELECT @rowsEffected;

GRANT EXECUTE ON OBJECT::[dbo].[UnpublishNewsletter] TO nlecaApp; 
GO