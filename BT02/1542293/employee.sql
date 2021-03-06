USE [Employee_SSIS]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/9/2017 10:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Salary] [int] NULL,
	[Department] [nvarchar](50) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1001, N'Mike', N'Manager', 1000, N'IT')
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1002, N'James', N'Manager', 2000, N'Sales')
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1003, N'Katie', N'Developer', 30000, N'IT')
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1004, N'Donald', N'Tester', 4000, N'IT')
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1005, N'Michell', N'Tester', 5000, N'IT')
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1006, N'Anthony', N'Team Lead', 6000, N'IT')
INSERT [dbo].[Employee] ([ID], [Name], [Designation], [Salary], [Department]) VALUES (1007, N'Vuong', N'Manager', 7000, N'ABC')
