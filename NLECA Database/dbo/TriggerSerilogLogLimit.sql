CREATE TRIGGER [TriggerSerilogLogLimit]
ON [dbo].[SerilogLog]
AFTER INSERT
AS
    SET NOCOUNT ON;
	
    IF (SELECT COUNT(*) FROM [dbo].[SerilogLog]) > 50
		BEGIN
			DELETE FROM [dbo].[SerilogLog] where TimeStamp IN (SELECT TOP 1 TimeStamp FROM [dbo].[SerilogLog] ORDER BY TimeStamp ASC);
		END
