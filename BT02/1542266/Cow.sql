USE [Cow]
GO
/****** Object:  Table [dbo].[Cow]    Script Date: 4/9/2017 6:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cow](
	[ID] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Wieght] [int] NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OLE DB Destination]    Script Date: 4/9/2017 6:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination](
	[ID] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Wieght] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'1', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'2', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'1', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'1', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'1', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'1', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'1', N'21/7/2017', N'6:35', N'65', N'Good')
INSERT [dbo].[OLE DB Destination] ([ID], [Date], [Time], [Wieght], [Status]) VALUES (N'2', N'21/7/2017', N'6:35', N'65', N'Good')
