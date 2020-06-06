CREATE PROCEDURE [dbo].[GetEventsInDateRange]
	@start	DATETIME,
	@end	DATETIME
AS

	SELECT * FROM Events AS e
	WHERE CONVERT(date, @start) BETWEEN CONVERT(date, e.EventDate) AND CONVERT(date, e.EventDateEnd)
	OR CONVERT(date, @end) BETWEEN CONVERT(date, e.EventDate) AND CONVERT(date, e.EventDateEnd);

GRANT EXECUTE ON OBJECT::[dbo].[GetEventsInDateRange] TO nlecaApp; 
GO