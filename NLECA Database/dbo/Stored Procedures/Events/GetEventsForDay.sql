﻿CREATE PROCEDURE [dbo].[GetEventsForDay]
	@day	DATETIME
AS

	SELECT * FROM Events AS e
	WHERE (CONVERT(date, @day) BETWEEN CONVERT(date, e.EventDate) AND CONVERT(date, e.EventDateEnd))
	AND IsPublished = 1;

GRANT EXECUTE ON OBJECT::[dbo].[GetEventsForDay] TO nlecaApp; 
GO