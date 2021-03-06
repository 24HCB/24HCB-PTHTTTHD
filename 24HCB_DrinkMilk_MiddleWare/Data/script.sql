USE [24HCB]
GO
/****** Object:  Table [dbo].[Cows]    Script Date: 5/15/2017 12:07:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cows](
	[cowsCode] [int] NOT NULL,
	[weight] [int] NULL,
	[color] [varchar](20) NULL,
	[characteristics] [varchar](50) NULL,
	[goesOff] [bit] NULL,
	[data] [date] NULL,
 CONSTRAINT [PK_Cows] PRIMARY KEY CLUSTERED 
(
	[cowsCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[detail_Cows]    Script Date: 5/15/2017 12:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detail_Cows](
	[chipCode] [int] NOT NULL,
	[date] [time](7) NULL,
	[temperature] [int] NULL,
	[weight] [int] NULL,
	[protit] [int] NULL,
	[gluxit] [int] NULL,
	[lipit] [int] NULL,
	[healthStatus] [varchar](50) NULL,
 CONSTRAINT [PK_detail_Cows] PRIMARY KEY CLUSTERED 
(
	[chipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[DetailMilk]    Script Date: 5/15/2017 12:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailMilk](
	[detailCode] [int] NOT NULL,
	[ChipCode] [int] NOT NULL,
	[quantum] [int] NULL,
	[breastsStatus] [varchar](100) NULL,
 CONSTRAINT [PK_DetailMilk] PRIMARY KEY CLUSTERED 
(
	[detailCode] ASC,
	[ChipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Location]    Script Date: 5/15/2017 12:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[localtionCode] [int] NOT NULL,
	[address] [varchar](100) NULL,
	[stationCode] [int] NULL,
	[Maneger] [int] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[localtionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Lodging]    Script Date: 5/15/2017 12:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodging](
	[lodgingCode] [int] NOT NULL,
	[locationCode] [int] NULL,
	[addres] [varchar](100) NULL,
 CONSTRAINT [PK_Lodging] PRIMARY KEY CLUSTERED 
(
	[lodgingCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Milk]    Script Date: 5/15/2017 12:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Milk](
	[milkCode] [int] NOT NULL,
	[lodpingCode] [int] NULL,
	[employeeCode] [int] NULL,
	[date] [date] NULL,
	[timeStart] [time](7) NULL,
	[timeEnd] [time](7) NULL,
 CONSTRAINT [PK_Milk] PRIMARY KEY CLUSTERED 
(
	[milkCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Poster]    Script Date: 5/15/2017 12:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poster](
	[employeeCode] [int] NOT NULL,
	[fullName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[identityCode] [int] NULL,
	[phone] [int] NULL,
	[email] [varchar](50) NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Poster] PRIMARY KEY CLUSTERED 
(
	[employeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[station]    Script Date: 5/15/2017 12:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[station](
	[stationCode] [int] NOT NULL,
	[address] [varchar](100) NULL,
 CONSTRAINT [PK_station] PRIMARY KEY CLUSTERED 
(
	[stationCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
