CREATE PROCEDURE [dbo].[GetArticlesByNewsletterId]
	@newsletterId INT
AS
	SELECT * FROM Articles WHERE NewsletterId = @newsletterId;
