CREATE PROCEDURE [dbo].[DeleteNewsletter]
	@newsletterId INT

AS
	DECLARE @rowsEffected INT = 0;

	DELETE FROM Newsletters WHERE NewsletterId = @newsletterId;
	SET @rowsEffected = @@ROWCOUNT;

SELECT @rowsEffected;

