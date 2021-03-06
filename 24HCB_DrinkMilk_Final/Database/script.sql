USE [24HCB_VN]
GO
/****** Object:  Table [dbo].[BO]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BONCHUA]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUONG]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COSO]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTQUYTRINH]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTSUCKHOE]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANPHOI]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUYTRINHVATSUA]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRUSO]    Script Date: 6/11/2017 10:25:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BO] ([MaSoChip], [NgayNhap], [CanNang], [MauSac], [DacDiemNhanDien], [DiTat]) VALUES (1, CAST(N'2017-10-05' AS Date), 60, N'Đen', N'Dị tật ở tai', 1)
INSERT [dbo].[BO] ([MaSoChip], [NgayNhap], [CanNang], [MauSac], [DacDiemNhanDien], [DiTat]) VALUES (2, CAST(N'2017-06-10' AS Date), 50, N'Trắng đen', N'dị tật ở chân trái sau', 1)
INSERT [dbo].[BO] ([MaSoChip], [NgayNhap], [CanNang], [MauSac], [DacDiemNhanDien], [DiTat]) VALUES (3, CAST(N'2017-06-11' AS Date), 40, N'Trắng', N'Có bớt đỏ ở tai', 0)
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (1, 2, N'Khu A')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (2, 2, N'Khu B')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (3, 3, N'Khu B')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (4, 3, N'Khu C')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (5, 4, N'Khu D')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (6, 5, N'Khu vực 01')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (7, 5, N'Khu Vực 02')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (8, 5, N'Khu Vực 03')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (9, 5, N'Khu Vực 04')
INSERT [dbo].[CHUONG] ([MaSoChuong], [MaCoSo], [DiaChiChuong]) VALUES (10, 5, N'Khu Vực 05')
INSERT [dbo].[COSO] ([MaCS], [DiaChiCS], [MaTruSo], [NguoiQuanLy]) VALUES (2, N'475D Lê Trọng Tấn', 1, 1)
INSERT [dbo].[COSO] ([MaCS], [DiaChiCS], [MaTruSo], [NguoiQuanLy]) VALUES (3, N'227 Nguyễn Văn Cừ, Q.5', 1, 1)
INSERT [dbo].[COSO] ([MaCS], [DiaChiCS], [MaTruSo], [NguoiQuanLy]) VALUES (4, N'Thành phố Huế', 2, 2)
INSERT [dbo].[COSO] ([MaCS], [DiaChiCS], [MaTruSo], [NguoiQuanLy]) VALUES (5, N'Đà nẵng', 2, 4)
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (1, 1, 1, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (1, 2, 10, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (1, 3, 7, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (2, 1, 5, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (2, 2, 10, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (2, 3, 3, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (3, 1, 6, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (3, 2, 7, N'bình thường')
INSERT [dbo].[CTQUYTRINH] ([MaQuyTrinh], [MaSoChip], [SoLuongSua], [TinhTrangBauVu]) VALUES (3, 3, 5, N'Bị thương')
INSERT [dbo].[CTSUCKHOE] ([MaSoChip], [NgayGhiNhan], [GioGhiNhan], [CanNang], [NhietDo], [Protit], [Gluxit], [Lipit], [TTSucKhoe]) VALUES (1, CAST(N'2017-06-11' AS Date), CAST(N'12:00:00' AS Time), 60, 36, 23, 23, 23, N'Tốt')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNhanVien], [CMND], [SoDienThoai], [username], [password]) VALUES (1, N'Phước Lộc', N'1234567890  ', N'1234567890  ', N'phuocloc', N'phuocloc')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNhanVien], [CMND], [SoDienThoai], [username], [password]) VALUES (2, N'Minh Vương', N'1234567890  ', N'1234567890  ', N'minhvuong', N'minhvuong')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNhanVien], [CMND], [SoDienThoai], [username], [password]) VALUES (3, N'Xuân Nghiệp', N'1234567890  ', N'1234567890  ', N'xuannghiep', N'xuannghiep')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNhanVien], [CMND], [SoDienThoai], [username], [password]) VALUES (4, N'Trường Sơn', N'1234567890  ', N'1234567890  ', N'truongson', N'truongson')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNhanVien], [CMND], [SoDienThoai], [username], [password]) VALUES (5, N'Lệ Huyền', N'1234567890  ', N'1234567890  ', N'lehuyen', N'lehuyen')
INSERT [dbo].[QUYTRINHVATSUA] ([MaQuyTrinh], [MaSoChuong], [MaNhanVien], [NgayThucHien], [GioBatDau], [GioKetThuc]) VALUES (1, 1, 1, CAST(N'2017-06-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[QUYTRINHVATSUA] ([MaQuyTrinh], [MaSoChuong], [MaNhanVien], [NgayThucHien], [GioBatDau], [GioKetThuc]) VALUES (2, 1, 1, CAST(N'2017-06-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[QUYTRINHVATSUA] ([MaQuyTrinh], [MaSoChuong], [MaNhanVien], [NgayThucHien], [GioBatDau], [GioKetThuc]) VALUES (3, 1, 1, CAST(N'2017-06-11' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[TRUSO] ([MaTruSo], [DiaChiTruSo]) VALUES (1, N'Miền Bắc  ')
INSERT [dbo].[TRUSO] ([MaTruSo], [DiaChiTruSo]) VALUES (2, N'Miền Trung')
