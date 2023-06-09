USE [master]
GO
/****** Object:  Database [quanlydiem1_HTTM]    Script Date: 12/19/2022 9:08:35 PM ******/
CREATE DATABASE [quanlydiem1_HTTM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlydiem1_HTTM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\quanlydiem1_HTTM.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'quanlydiem1_HTTM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\quanlydiem1_HTTM_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [quanlydiem1_HTTM] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlydiem1_HTTM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlydiem1_HTTM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET RECOVERY FULL 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET  MULTI_USER 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlydiem1_HTTM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [quanlydiem1_HTTM] SET DELAYED_DURABILITY = DISABLED 
GO
USE [quanlydiem1_HTTM]
GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[MaCN] [varchar](10) NOT NULL,
	[TenCN] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_chuyennganh] PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongTy]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongTy](
	[MaCT] [varchar](10) NOT NULL,
	[TenCT] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[YeuCau] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_CongTy] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DangKi]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangKi](
	[MaLTC] [varchar](10) NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[DiemCC] [float] NULL,
	[DiemGK] [float] NULL,
	[DiemCK] [float] NULL,
	[Huy] [bit] NULL,
 CONSTRAINT [PK_dangki] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaLTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Day]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Day](
	[MaGV] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
 CONSTRAINT [PK_day] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[HocVi] [nvarchar](20) NULL,
	[HocHam] [nvarchar](20) NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ChuyenMon] [nvarchar](100) NULL,
	[TrangThaiNghi] [bit] NULL,
 CONSTRAINT [PK_giangvien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LopTinChi]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopTinChi](
	[MaLTC] [varchar](10) NOT NULL,
	[NamHoc] [varchar](10) NOT NULL,
	[HocKi] [varchar](3) NOT NULL,
	[SLToiThieu] [int] NOT NULL,
	[SLToiDa] [int] NOT NULL,
	[NgayBD] [date] NOT NULL,
	[NgayKT] [date] NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
 CONSTRAINT [PK_loptinchi] PRIMARY KEY CLUSTERED 
(
	[MaLTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](20) NOT NULL,
	[SoTietLT] [int] NOT NULL,
	[SoTietTH] [int] NOT NULL,
	[SoTinChi] [int] NOT NULL,
	[HeSoCC] [int] NULL,
	[HeSoGK] [int] NULL,
	[HeSoCK] [int] NULL,
 CONSTRAINT [PK_monhoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NangLuc]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NangLuc](
	[MaNL] [varchar](10) NOT NULL,
	[NhanxetTT] [nvarchar](50) NULL,
	[TrinhDoNN] [nvarchar](50) NULL,
	[KiNangLVN] [nvarchar](10) NULL,
	[KiNangGT] [nvarchar](10) NULL,
	[Hocluc] [nvarchar](20) NULL,
	[MaSV] [varchar](10) NOT NULL,
 CONSTRAINT [PK_NangLuc] PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[KhoaHoc] [nvarchar](50) NULL,
	[TrangThaiNghi] [bit] NULL,
	[MaCN] [varchar](10) NULL,
	[MaLop] [varchar](10) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[DanhGia] [nvarchar](10) NULL,
	[MaNL] [varchar](10) NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTk] [varchar](10) NOT NULL,
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[MaVaitro] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VaiTro](
	[MaVaiTro] [varchar](10) NOT NULL,
	[TenVaiTro] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[MaVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN00', N'Chưa có chuyên ngành')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN10', N'Công nghệ phần mềm')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN12', N'á à ắ')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN13', N'')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN14', N'123')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN5       ', N'Hệ thống thông tin')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN6       ', N'Kỹ thuật máy tính')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN7       ', N'An toàn thông tin')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN8       ', N'Hệ thống thông tin')
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN]) VALUES (N'CN9       ', N'Kỹ thuật mạng máy tính')
INSERT [dbo].[CongTy] ([MaCT], [TenCT], [DiaChi], [YeuCau]) VALUES (N'CT1', N'OneSoftStu', N'HaNoi', N'Không')
INSERT [dbo].[CongTy] ([MaCT], [TenCT], [DiaChi], [YeuCau]) VALUES (N'CT2', N'TwosoftStu', N'TPHCM', N'Không')
INSERT [dbo].[CongTy] ([MaCT], [TenCT], [DiaChi], [YeuCau]) VALUES (N'CT3', N'ThreesoftStu', N'BinhDuong', N'Kem')
INSERT [dbo].[CongTy] ([MaCT], [TenCT], [DiaChi], [YeuCau]) VALUES (N'CT4', N'FoursoftStu', N'ThuDuc', N'Trung Binh')
INSERT [dbo].[CongTy] ([MaCT], [TenCT], [DiaChi], [YeuCau]) VALUES (N'CT5', N'FivesoftStu', N'DaNang', N'Kha')
INSERT [dbo].[CongTy] ([MaCT], [TenCT], [DiaChi], [YeuCau]) VALUES (N'CT6', N'SixsoftStu', N'NamDinh', N'Gioi')
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV1', 9.75, 10, 10, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC11', N'SV1', 0, 0, 0, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC2', N'SV1', 5, 5, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC3', N'SV1', 9, 9, 9, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC5', N'SV1', 5, 10, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC6', N'SV1', 9, 5, 5, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV1', 10, 10, 9, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV1', 3, 8, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC9', N'SV1', 6, 5, 4, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV10', 2, 2, 9, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC10', N'SV10', 0, 0, 0, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC11', N'SV10', 0, 0, 0, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC2', N'SV10', 5, 6, 3, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC3', N'SV10', 0, 0, 0, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV10', 7, 4, 2, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC5', N'SV10', 0, 0, 0, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC6', N'SV10', 0, 0, 0, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV10', 1, 1, 1, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC9', N'SV10', 0, 0, 0, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV11', 1, 1, 1, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV12', 2, 2, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV13', 3, 4, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV14', 9, 9, 9, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV15', 7, 7, 7, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV16', 1, 1, 1, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV17', 2, 2, 2, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV18', 5, 5, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV19', 5, 5, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV2', 8, 9, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV2', 5, 5, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV2', 7, 7, 7, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV2', 3, 8, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV20', 2, 2, 2, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV3', 4, 7.5, 3.25, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC10', N'SV3', 3, 2, 1, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC11', N'SV3', 0, 0, 0, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC2', N'SV3', 7, 8, 9, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC3', N'SV3', 8, 7.5, 7.25, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC4', N'SV3', 4, 4, 6, 1)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV3', 7.7, 8, 7.4, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV3', 3, 3, 3, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV4', 6, 7, 9, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV4', 4, 9, 7, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV4', 3, 4, 4, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV5', 8, 8, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV5', 8, 8, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV6', 5, 5.5, 5, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV6', 4.5, 5, 4, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV6', 9, 9, 9, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV7', 7, 7, 7, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV7', 8, 3, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV7', 3, 1, 1, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV8', 6, 6, 6, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV8', 4, 4, 4, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC1', N'SV9', 6, 5, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC7', N'SV9', 3, 8, 8, 0)
INSERT [dbo].[DangKi] ([MaLTC], [MaSV], [DiemCC], [DiemGK], [DiemCK], [Huy]) VALUES (N'LTC8', N'SV9', 3, 8, 8, 0)
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV2', N'MH1')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV4', N'MH1')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV5', N'MH1')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV7', N'MH11')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV7', N'MH13')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV2', N'MH2')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV3', N'MH2')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV4', N'MH2')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV5', N'MH2')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV1', N'MH3')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV2', N'MH3')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV2', N'MH4')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV3', N'MH4')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV4', N'MH4')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV1', N'MH5')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV2', N'MH5')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV3', N'MH5')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV4', N'MH5')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV5', N'MH5')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV2', N'MH6')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV4', N'MH6')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV5', N'MH7')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV8', N'MH8')
INSERT [dbo].[Day] ([MaGV], [MaMH]) VALUES (N'GV8', N'MH9')
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV1', N'Lan Anh', N'Thạc sĩ', N'Phó Giáo Sư', 0, CAST(N'1950-01-09' AS Date), N'Bà Rịa', N'Công Nghệ', 1)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV2', N'Trung Hiếu', N'Thạc sĩ', N'Phó Giáo Sư', 0, CAST(N'1960-08-01' AS Date), N'Bà Rịa', N'Công Nghệ', 1)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV3', N'Nhật Bình', N'Thạc sĩ', N'Giáo Sư', 1, CAST(N'1970-01-13' AS Date), N'Bà Rịa', N'Công Nghệ', 0)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV4', N'Tú Tài', N'Cử nhân', N'Giáo Sư', 1, CAST(N'1965-02-01' AS Date), N'Bà Rịa', N'Công Nghệ', 1)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV5', N'', N'Cử nhân', N'Phó Giáo Sư', 1, CAST(N'2022-05-31' AS Date), N'', N'', 1)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV6', N'', N'Không', N'Không', 0, CAST(N'2000-01-01' AS Date), N'', N'', 1)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV7', N'giang vien bay', N'Không', N'Không', 0, CAST(N'2022-12-10' AS Date), N'123', N'cong nghệ', 0)
INSERT [dbo].[GiangVien] ([MaGV], [HoTen], [HocVi], [HocHam], [Phai], [NgaySinh], [DiaChi], [ChuyenMon], [TrangThaiNghi]) VALUES (N'GV8', N'', N'Không', N'Không', 0, CAST(N'2022-12-10' AS Date), N'', N'', 1)
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'LO2', N'd18cqcn02')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'LO3', N'd18cqcn03')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'LO1', N'd19cqcn01')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC1', N'2022-2023', N'HK1', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-20' AS Date), N'MH3 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC10', N'2019-2020', N'HK1', 35, 50, CAST(N'2022-05-18' AS Date), CAST(N'2022-06-18' AS Date), N'MH7 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC11', N'2022-2023', N'HK1', 1, 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-06-20' AS Date), N'MH2 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC12', N'2022-2023', N'HK1', 1, 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-06-20' AS Date), N'MH2 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC13', N'2022-2023', N'HK1', 1, 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-06-20' AS Date), N'MH2 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC14', N'2022', N'HK1', 1, 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-06-20' AS Date), N'MH2       ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC15', N'2022', N'HK1', 1, 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-06-20' AS Date), N'MH2       ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC16', N'2022', N'HK1', 1, 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-06-20' AS Date), N'MH2       ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC18', N'2026', N'HK1', 1, 2, CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), N'MH1 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC19', N'', N'HK1', 0, 0, CAST(N'2022-12-09' AS Date), CAST(N'2022-12-09' AS Date), N'MH3 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC2', N'2018-2019', N'HK2', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-25' AS Date), N'MH1 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC20', N'', N'HK1', 0, 0, CAST(N'2022-12-09' AS Date), CAST(N'2022-12-09' AS Date), N'MH2 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC21', N'', N'HK1', 0, 0, CAST(N'2022-12-09' AS Date), CAST(N'2022-12-09' AS Date), N'MH2 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC3', N'2022-2023', N'HK1', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-25' AS Date), N'MH2 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC4', N'2022-2023', N'HK1', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-25' AS Date), N'MH3 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC5', N'2022-2023', N'HK1', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-25' AS Date), N'MH4 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC6', N'2022-2023', N'HK2', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-25' AS Date), N'MH5 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC7', N'2021-2022', N'HK1', 30, 50, CAST(N'2014-05-01' AS Date), CAST(N'2014-05-28' AS Date), N'MH1 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC8', N'2022-2023', N'HK1', 30, 45, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-20' AS Date), N'MH3 ')
INSERT [dbo].[LopTinChi] ([MaLTC], [NamHoc], [HocKi], [SLToiThieu], [SLToiDa], [NgayBD], [NgayKT], [MaMH]) VALUES (N'LTC9', N'2020-2021', N'HK1', 30, 45, CAST(N'2022-05-18' AS Date), CAST(N'2022-07-18' AS Date), N'MH6 ')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH1', N'Giải Tích 1', 45, 0, 3, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH11', N'1', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH12', N'2', 2, 2, 2, 2, 2, 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH13', N'3', 3, 3, 3, 3, 3, 3)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH2', N'Vật lý ', 30, 0, 2, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH3', N'Cơ sở dữ liệu', 15, 15, 2, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH4', N'Toán rời rạc', 20, 15, 3, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH5', N'Thực tập cơ sở', 30, 15, 3, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH6', N'Giải Tích 2', 16, 0, 3, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH7', N'Nhập môn phần mềm', 30, 0, 4, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH8', N'Điện tử', 20, 12, 3, 10, 30, 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTietLT], [SoTietTH], [SoTinChi], [HeSoCC], [HeSoGK], [HeSoCK]) VALUES (N'MH9', N'Kinh tế', 12, 12, 12, 12, 32, 62)
INSERT [dbo].[NangLuc] ([MaNL], [NhanxetTT], [TrinhDoNN], [KiNangLVN], [KiNangGT], [Hocluc], [MaSV]) VALUES (N'NL1', N'Tot', N'Advanced', N'Tot', N'Tot', N'Tot', N'SV1')
INSERT [dbo].[NangLuc] ([MaNL], [NhanxetTT], [TrinhDoNN], [KiNangLVN], [KiNangGT], [Hocluc], [MaSV]) VALUES (N'NL2', N'Kha', N'Pre-Intermediate', N'Kha', N'Kem', N'Trung Binh', N'SV2       ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV1', N'Đỗ Đại Học', 1, CAST(N'2001-09-03' AS Date), N'Nghia Thành', N'2017-2021', 0, N'CN6       ', N'LO1 ', N'', N'Gioi', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV10', N'Lê Long Bảo', 0, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\2.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV11', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\3.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV12', N'Bé Sang Giấu Tên', 1, CAST(N'2001-09-03' AS Date), N'Nghia Thành', N'2017-2021', 0, N'CN6       ', N'LO1 ', N'', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV13', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO2', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV14', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV15', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV16', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV17', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV18', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV19', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV2       ', N'Nguyễn Thanh Tú', 1, CAST(N'2001-04-20' AS Date), N'Suối Nghệ', N'2017-2021', 1, N'CN10', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\3.png', N'Trung Binh', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV20', N'Nguyễn Chí Tài', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV22', N'sinh vien 22', 1, CAST(N'2000-01-01' AS Date), N'22', N'2017-2021', 1, N'CN00 ', N'LO2 ', N'', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV23', N'', 0, CAST(N'2000-01-01' AS Date), N'', N'2017-2021', 1, N'CN00 ', N'LO2 ', N'', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV3', N'Đỗ Thị Đào', 1, CAST(N'2017-04-13' AS Date), N'Nha Trang', N'2020-2024', 0, N'CN10', N'LO2', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\4.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV4', N'Nguyễn Ngọc Ánh', 1, CAST(N'2019-04-18' AS Date), N'Đà Nẵng', N'2020-2024', 0, N'CN10', N'LO3', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\5.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV5', N'Đỗ Lao Động', 0, CAST(N'2015-05-04' AS Date), N'Đà Nẵng', N'2020-2024', 0, N'CN10', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\6.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV6', N'Lê Thị Huệ', 1, CAST(N'2015-05-04' AS Date), N'Châu Đức', N'2020-2024', 0, N'CN10', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\7.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV7', N'Đoàn An Khánh', 0, CAST(N'2015-05-04' AS Date), N'Châu Đức', N'2020-2024', 0, N'CN10', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\8.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV8', N'Trần Thị Thư', 1, CAST(N'2000-06-16' AS Date), N'Thừa Thiên Huế', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\9.png', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Phai], [NgaySinh], [DiaChi], [KhoaHoc], [TrangThaiNghi], [MaCN], [MaLop], [HinhAnh], [DanhGia], [MaNL]) VALUES (N'SV9', N'Nguyễn Thị Thảo Nhi', 1, CAST(N'2001-09-03' AS Date), N'Nghĩa Thành', N'2017-2021', 0, N'CN6       ', N'LO1', N'C:\Users\Admin\Dropbox\My PC (DESKTOP-BDENHI9)\Documents\HinhAnhSV\10.png', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'GV1       ', N'LA', N'123456', N'VT2')
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'GV2       ', N'a', N'123456', N'VT2')
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'GV3', N'GIANGVIEN3', N'123456', N'VT1')
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'GV4', N'GIANGVIEN4', N'123456', N'VT1')
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'SV1', N'SINHVIEN1', N'123456', N'VT3')
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'SV2', N'SINHVIEN2', N'123456', N'VT3')
INSERT [dbo].[TaiKhoan] ([MaTk], [TenTaiKhoan], [MatKhau], [MaVaitro]) VALUES (N'SV3', N'SV3', N'123456', N'VT3')
INSERT [dbo].[VaiTro] ([MaVaiTro], [TenVaiTro]) VALUES (N'VT1', N'QUANLY')
INSERT [dbo].[VaiTro] ([MaVaiTro], [TenVaiTro]) VALUES (N'VT2', N'GIANGVIEN')
INSERT [dbo].[VaiTro] ([MaVaiTro], [TenVaiTro]) VALUES (N'VT3', N'SINHVIEN')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_TENLOP]    Script Date: 12/19/2022 9:08:35 PM ******/
ALTER TABLE [dbo].[Lop] ADD  CONSTRAINT [UN_TENLOP] UNIQUE NONCLUSTERED 
(
	[TenLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_TENMH]    Script Date: 12/19/2022 9:08:35 PM ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [UN_TENMH] UNIQUE NONCLUSTERED 
(
	[TenMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NangLuc]    Script Date: 12/19/2022 9:08:35 PM ******/
ALTER TABLE [dbo].[NangLuc] ADD  CONSTRAINT [IX_NangLuc] UNIQUE NONCLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TaiKhoan]    Script Date: 12/19/2022 9:08:35 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [IX_TaiKhoan] UNIQUE NONCLUSTERED 
(
	[MaTk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_TaiKhoan]    Script Date: 12/19/2022 9:08:35 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [UC_TaiKhoan] UNIQUE NONCLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DangKi]  WITH CHECK ADD  CONSTRAINT [FK_dangki_loptinchi] FOREIGN KEY([MaLTC])
REFERENCES [dbo].[LopTinChi] ([MaLTC])
GO
ALTER TABLE [dbo].[DangKi] CHECK CONSTRAINT [FK_dangki_loptinchi]
GO
ALTER TABLE [dbo].[DangKi]  WITH CHECK ADD  CONSTRAINT [FK_dangki_sinhvien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DangKi] CHECK CONSTRAINT [FK_dangki_sinhvien]
GO
ALTER TABLE [dbo].[Day]  WITH CHECK ADD  CONSTRAINT [FK_day_giangvien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[Day] CHECK CONSTRAINT [FK_day_giangvien]
GO
ALTER TABLE [dbo].[Day]  WITH CHECK ADD  CONSTRAINT [FK_day_monhoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Day] CHECK CONSTRAINT [FK_day_monhoc]
GO
ALTER TABLE [dbo].[LopTinChi]  WITH CHECK ADD  CONSTRAINT [FK_loptinchi_monhoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[LopTinChi] CHECK CONSTRAINT [FK_loptinchi_monhoc]
GO
ALTER TABLE [dbo].[NangLuc]  WITH CHECK ADD  CONSTRAINT [FK_NangLuc_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[NangLuc] CHECK CONSTRAINT [FK_NangLuc_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_chuyennganh] FOREIGN KEY([MaCN])
REFERENCES [dbo].[ChuyenNganh] ([MaCN])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_sinhvien_chuyennganh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_sinhvien_lop]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH NOCHECK ADD  CONSTRAINT [FK_TaiKhoanGV_GiangVien] FOREIGN KEY([MaTk])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[TaiKhoan] NOCHECK CONSTRAINT [FK_TaiKhoanGV_GiangVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH NOCHECK ADD  CONSTRAINT [FK_TaiKhoanGV_SinhVien] FOREIGN KEY([MaTk])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[TaiKhoan] NOCHECK CONSTRAINT [FK_TaiKhoanGV_SinhVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanGV_VaiTro] FOREIGN KEY([MaVaitro])
REFERENCES [dbo].[VaiTro] ([MaVaiTro])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoanGV_VaiTro]
GO
/****** Object:  StoredProcedure [dbo].[DS_MH_CHUACHON_GV]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DS_MH_CHUACHON_GV]
@MAGV NVARCHAR(10)
AS
select tenmh from monhoc where monhoc.mamh not in (select mamh from day where day.magv=@MAGV)
GO
/****** Object:  StoredProcedure [dbo].[DS_MHCHON_GV]    Script Date: 12/19/2022 9:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DS_MHCHON_GV]
@MAGV NVARCHAR(10)
AS
select tenmh from monhoc where monhoc.mamh in (select mamh from day where day.magv=@MAGV) 




GO
USE [master]
GO
ALTER DATABASE [quanlydiem1_HTTM] SET  READ_WRITE 
GO
