CREATE TABLE [dbo].[ArticleImages]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [ArticleId] INT NOT NULL, 
    [Md5Hash] VARCHAR(50) NOT NULL, 
    [ImageName] VARCHAR(50) NOT NULL, 
    [ImageLocation] VARCHAR(200) NOT NULL
)
