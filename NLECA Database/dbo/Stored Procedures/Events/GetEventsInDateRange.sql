CREATE PROCEDURE [dbo].[GetEventsInDateRange]
	@start	DATETIME,
	@end	DATETIME
AS

	SELECT * FROM Events AS e
	WHERE (CONVERT(date, e.EventDate) BETWEEN CONVERT(date, @start) AND CONVERT(date, @end)
	OR CONVERT(date, e.EventDateEnd) BETWEEN CONVERT(date, @start) AND CONVERT(date, @end))
	AND IsPublished = 1;

GRANT EXECUTE ON OBJECT::[dbo].[GetEventsInDateRange] TO nlecaApp; 
GO