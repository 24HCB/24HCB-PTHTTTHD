USE [24HCB_VN]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 5/28/2017 11:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO
/****** Object:  Table [dbo].[BO]    Script Date: 5/28/2017 11:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BO](
	[MaSoChip] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[CanNang] [int] NULL,
	[MauSac] [nvarchar](20) NULL,
	[DacDiemNhanDien] [nvarchar](200) NULL,
	[DiTat] [bit] NULL,
 CONSTRAINT [PK_BO] PRIMARY KEY CLUSTERED 
(
	[MaSoChip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[BONCHUA]    Script Date: 5/28/2017 11:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BONCHUA](
	[MaBonChua] [int] NOT NULL,
	[MaCoSo] [int] NULL,
	[SucChuaToiDa] [int] NULL,
	[SucChuaHienTai] [int] NULL,
 CONSTRAINT [PK_BonChua] PRIMARY KEY CLUSTERED 
(
	[MaBonChua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[CHUONG]    Script Date: 5/28/2017 11:02:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONG](
	[MaSoChuong] [int] NOT NULL,
	[MaCoSo] [int] NULL,
	[DiaChiChuong] [nvarchar](100) NULL,
 CONSTRAINT [PK_CHUONG] PRIMARY KEY CLUSTERED 
(
	[MaSoChuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[COSO]    Script Date: 5/28/2017 11:02:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COSO](
	[MaCS] [int] NOT NULL,
	[DiaChiCS] [nvarchar](100) NULL,
	[MaTruSo] [int] NULL,
	[NguoiQuanLy] [int] NULL,
 CONSTRAINT [PK_COSO] PRIMARY KEY CLUSTERED 
(
	[MaCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[CTQUYTRINH]    Script Date: 5/28/2017 11:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTQUYTRINH](
	[MaQuyTrinh] [int] NOT NULL,
	[MaSoChip] [int] NOT NULL,
	[SoLuongSua] [int] NULL,
	[TinhTrangBauVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietQuyTrinh] PRIMARY KEY CLUSTERED 
(
	[MaQuyTrinh] ASC,
	[MaSoChip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[CTSUCKHOE]    Script Date: 5/28/2017 11:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTSUCKHOE](
	[MaSoChip] [int] NOT NULL,
	[NgayGhiNhan] [date] NOT NULL,
	[GioGhiNhan] [time](7) NULL,
	[CanNang] [int] NULL,
	[NhietDo] [int] NULL,
	[Protit] [int] NULL,
	[Gluxit] [int] NULL,
	[Lipit] [int] NULL,
	[TTSucKhoe] [nvarchar](50) NULL,
 CONSTRAINT [PK_CTSUCKHOE] PRIMARY KEY CLUSTERED 
(
	[MaSoChip] ASC,
	[NgayGhiNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/28/2017 11:02:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[CMND] [char](12) NULL,
	[SoDienThoai] [char](12) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[PHANPHOI]    Script Date: 5/28/2017 11:02:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANPHOI](
	[MaPhanPhoi] [int] NOT NULL,
	[MaNhaSX] [int] NULL,
	[MaBonChua] [int] NULL,
	[NgayPP] [time](7) NULL,
 CONSTRAINT [PK_PhanPhoi] PRIMARY KEY CLUSTERED 
(
	[MaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[QUYTRINHVATSUA]    Script Date: 5/28/2017 11:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYTRINHVATSUA](
	[MaQuyTrinh] [int] NOT NULL,
	[MaSoChuong] [int] NULL,
	[MaNhanVien] [int] NULL,
	[NgayThucHien] [date] NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
 CONSTRAINT [PK_QUYTRINHVATSUA] PRIMARY KEY CLUSTERED 
(
	[MaQuyTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 5/28/2017 11:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON),
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[TRUSO]    Script Date: 5/28/2017 11:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRUSO](
	[MaTruSo] [int] NOT NULL,
	[DiaChiTruSo] [nchar](10) NULL,
 CONSTRAINT [PK_TRUSO] PRIMARY KEY CLUSTERED 
(
	[MaTruSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
