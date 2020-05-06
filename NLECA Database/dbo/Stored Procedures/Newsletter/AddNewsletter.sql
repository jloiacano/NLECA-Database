CREATE PROCEDURE [dbo].[AddNewsletter]
	@createdDate DATETIME,
	@createdBy INT,
	@memo VARCHAR(256),
	@displayDate VARCHAR(256),
	@newsletterId INT OUTPUT
AS
	INSERT INTO Newsletters (CreatedDate, CreatedBy, Memo, DisplayDate)
	OUTPUT INSERTED.NewsletterId
	VALUES(@createdDate, @createdBy, @memo, @displayDate);