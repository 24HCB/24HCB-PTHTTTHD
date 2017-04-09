
CREATE DATABASE [ImportSSIS]
Go

USE [ImportSSIS]
GO

/****** Object:  Table [dbo].[Note]    Script Date: 2017-04-09 10:15:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Note](
	[id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[note] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO


