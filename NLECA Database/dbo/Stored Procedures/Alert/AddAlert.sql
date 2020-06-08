CREATE PROCEDURE [dbo].[AddAlert]
	@addedByUserId			INT
	, @addedByUserName		VARCHAR(50)

AS
	INSERT INTO Alerts(
		AddedByUserId
		, AddedByUserName
		)
	OUTPUT INSERTED.AlertId
	VALUES (
	@addedByUserId
	, @addedByUserName
	);

GRANT EXECUTE ON OBJECT::[dbo].[AddAlert] TO nlecaApp; 
GO