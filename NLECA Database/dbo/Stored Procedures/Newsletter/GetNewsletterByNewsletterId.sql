CREATE PROCEDURE [dbo].[GetNewsletterByNewsletterId]
	@newsletterId INT
AS
	SELECT * FROM Newsletters WHERE NewsletterId = @newsletterId;
