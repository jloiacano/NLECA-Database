CREATE TABLE [dbo].[ArticleImages]
(
	[Id] INT IDENTITY (1, 1) NOT NULL,
    [UploadedByUserId] VARCHAR(50) NOT NULL, 
    [UploadedByUserName] VARCHAR(50) NOT NULL, 
    [UploadedDate]   DATETIME      NULL,
    [IsCurrent] BIT NOT NULL DEFAULT 1,
    [SimpleCheckSum] VARCHAR(30) NOT NULL, 
    [ImageName] VARCHAR(50) NOT NULL, 
    [ImageLocation] VARCHAR(256) NOT NULL
)
