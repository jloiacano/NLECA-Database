﻿CREATE TABLE [dbo].[Articles] (
    [ArticleId]                     INT           IDENTITY (1, 1)   NOT NULL,
    [NewsletterId]                  INT                             NOT NULL,
    [ArticleSequence]               INT           DEFAULT ((0))     NOT NULL,
    [ImageFileLocation]             VARCHAR (256)                   NULL,
    [ArticleType]                   INT           DEFAULT ((0))     NOT NULL,
    [ArticleTableOfContentsText]    VARCHAR (256) DEFAULT ('Update TOC') NOT NULL,
    [ArticleTitle]                  VARCHAR (512) DEFAULT ('Update Title') NOT NULL,
    [ArticleText]                   VARCHAR (MAX) DEFAULT ('Must be updated') NOT NULL,
    [AddedBy]                       INT           DEFAULT ((0))     NOT NULL,
    [DateAdded]                     DATETIME      DEFAULT ((0))     NOT NULL,

    PRIMARY KEY CLUSTERED ([ArticleId] ASC),
    CONSTRAINT [Article_Newsletter] FOREIGN KEY ([NewsletterId]) REFERENCES [dbo].[Newsletters] ([NewsletterId]) ON DELETE CASCADE ON UPDATE CASCADE
);

