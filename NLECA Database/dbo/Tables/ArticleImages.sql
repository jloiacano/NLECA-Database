CREATE TABLE [dbo].[ArticleImages]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [UploadedByUserId] VARCHAR(50) NOT NULL, 
    [UploadedByUserName] VARCHAR(50) NOT NULL, 
    [IsCurrent] BIT NOT NULL DEFAULT 1,
    [SimpleCheckSum] VARCHAR(30) NOT NULL, 
    [ImageName] VARCHAR(50) NOT NULL, 
    [ImageLocation] VARCHAR(256) NOT NULL
)
