CREATE PROCEDURE [dbo].[UpdateAlert]
	  @alertId int

	, @alertTitle			VARCHAR(256)
	, @alertDate			DATETIME
	, @alertDateEnd			DATETIME
	, @alertShortDetails	VARCHAR(512)
	, @alertLongDetails		VARCHAR(MAX)
	, @alertImageLocation	VARCHAR(256) = NULL
AS

	UPDATE Alerts
	SET 
		AlertTitle = @alertTitle
		, AlertDate = @alertDate
		, AlertDateEnd = @alertDateEnd
		, AlertShortDetails = @alertShortDetails
		, AlertLongDetails = @alertLongDetails
		, AlertImageLocation = ISNULL(@alertImageLocation, '')
	WHERE AlertId = @alertId;

	SELECT @@ROWCOUNT;		

GRANT EXECUTE ON OBJECT::[dbo].[UpdateAlert] TO nlecaApp; 
GO
