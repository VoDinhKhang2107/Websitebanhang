USE [csdlBanDienThoai]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MaSP] [nchar](10) NULL,
	[MaThanhVien] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGiaBan] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nchar](12) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nchar](12) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
	[Mota] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen_ThanhVien]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen_ThanhVien](
	[MaThanhVien] [int] NOT NULL,
	[MaPQ] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanQuyen_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC,
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[Donvitinh] [nchar](10) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[MaLoaiSP] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 09/11/2023 9:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoVaTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [nchar](12) NULL,
	[MaLoaiTV] [int] NULL,
	[MaPQ] [int] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (1, 2, 11, CAST(240000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (1, 4, 10, CAST(1000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (1, 10, 15, CAST(1000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (2, 1, 6, CAST(11000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (3, 3, 1, CAST(24000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (4, 4, 10, CAST(100000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (5, 5, 2, CAST(50000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaHD], [MaSP], [SoLuong], [DonGiaBan]) VALUES (6, 6, 15, CAST(100000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (1, 1, 2, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (2, 2, 3, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (3, 2, 3, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (4, 3, 2, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (5, 4, 1, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (6, 5, 2, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (7, 6, 1, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (8, 7, 2, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonHang] ([MaHD], [MaKH], [MaNV], [NgayNhap], [NgayGiao]) VALUES (9, 8, 1, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (1, N'Nguyễn van a ', N'29 nguyễn văn lương ', N'12345678    ', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (2, N'Võ thị my', N'90 huỳnh thúc kháng', N'7894654     ', N'myvo@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (3, N'Trần văn mười ', N'20 nguyễn oanh', N'132654      ', N'muoi@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (4, N'Nguyễn chí luân', N'11 võ nguyên giáp', N'2423423     ', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (5, N'Trần thị hoa', N'90 nguyễn văn lượng', N'4234234     ', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (6, N'Võ minh trí', N'10 đường số 1 ', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (7, N'Hồ quang hiếu', N'20 xa lộ hà nội', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [Fax]) VALUES (8, N'Đông nhi', N'10 nguyễn xiễn', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'iPhone    ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'MacBook   ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Airpods   ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Watch     ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'iPad      ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (6, N'Phụ Kiện  ')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (1, N'Nguyễn văn ý', N'99 võ văn kiệt quận 1', N'3246565     ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (2, N'Lê văn tèo', N'20 cách mạng tháng tám ', N'132654      ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (3, N'Trần chí tuệ', N'30 phan huy ích', N'4654        ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (4, N'Lê văn phụng', N'', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (5, N'Trường văn mười', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (6, N'Lê minh huy', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (7, N'Võ huy khang', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([MaPQ], [TenQuyen], [Mota]) VALUES (1, N'Nhân viên: Danh sách', N'NhanVien_DanhSach')
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenQuyen], [Mota]) VALUES (2, N'Nhân viên: Thêm mới', N'NhanVien_ThemMoi')
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenQuyen], [Mota]) VALUES (3, N'Nhân viên: Cập nhật', N'NhaanVien_CapNhat')
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenQuyen], [Mota]) VALUES (4, N'Nhân viên: Xóa', N'NhanVien_Xoa')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
INSERT [dbo].[PhanQuyen_ThanhVien] ([MaThanhVien], [MaPQ], [GhiChu]) VALUES (1, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (1, N'iPhone 13 Blue', CAST(10000000 AS Decimal(18, 0)), N'Cái       ', N'Images/iphone-13-blue.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (2, N'iPhone 14 Pro Gold', CAST(24000000 AS Decimal(18, 0)), N'Cái       ', N'Images/iphone-14-pro-gold-webp.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (3, N'Apple Watch SE 20222 GPS ', CAST(5000000 AS Decimal(18, 0)), N'cái       ', N'Images/apple-watch-se-2022-gps-40mm-trang-kem.jpg', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (4, N'Bluetooth JBL ', CAST(5000000 AS Decimal(18, 0)), N'cái       ', N'Images/bluetooth-jbl-go-3-xanh-hong.jpg', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (5, N'iPad Air 5 WiFi 64GB', CAST(5000000 AS Decimal(18, 0)), N'cái       ', N'Images/ipad-air-5-wifi-startlight-label.jpg', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (6, N'MacBook Air 15 inch M2 ', CAST(23000000 AS Decimal(18, 0)), N'cái       ', N'Images/mac-air-15-m2-xam.jpg', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (7, N'iPhone 15 Plus 512GB', CAST(25000000 AS Decimal(18, 0)), N'cái       ', N'Images/iphone-15-plus-green.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (8, N'AirPods Pro (2nd Gen)', CAST(3000000 AS Decimal(18, 0)), NULL, N'Images/airpods-pro-2.jpg', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (9, N'MacBook Air 13 inch M2 ', CAST(20000000 AS Decimal(18, 0)), N'cái       ', N'Images/mac-air-13-m2-vang.jpg', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (10, N'iPad Pro M2 128GB', CAST(10000000 AS Decimal(18, 0)), N'cái       ', N'Images/iPad-Pro-M2-11-sliver-thumb-label.jpg', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (16, N'Magic Keyboard ', CAST(800000 AS Decimal(18, 0)), N'cái       ', N'Images/magic-keyboard-(1).jpg', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (17, N'iPad 10 WiFi 64GB', CAST(5000000 AS Decimal(18, 0)), N'cái       ', N'Images/iPad-gen-10-sliver.jpg', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (26, N'iPhone 15 Pro Max 256', CAST(24000000 AS Decimal(18, 0)), NULL, N'Images/iphone-15-pro-black.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [Donvitinh], [HinhAnh], [MaLoaiSP]) VALUES (27, N'Apple Watch SE 2022', CAST(1000000 AS Decimal(18, 0)), NULL, N'Images/apple-watch-s8-ultra-cao-su-vang.jpg', 4)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (1, N'admin', N'1', N'Admin', NULL, NULL, N'132132154   ', 2, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (6, N'dinhkhang', N'123456', N'Võ Đình Khang', NULL, N'2051010137khang@ou.edu.vn', N'12413124124 ', 1, 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (7, N'dinhkhang1', N'1', N'Võ Đình Khang', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (9, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (10, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (11, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (12, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (13, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (14, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (15, N'dinhkhang11', N'123456', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoVaTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [MaPQ]) VALUES (16, N'khang', N'1', N'khang111', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[DonHang] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietHD_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[PhanQuyen_ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_ThanhVien_PhanQuyen] FOREIGN KEY([MaPQ])
REFERENCES [dbo].[PhanQuyen] ([MaPQ])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanQuyen_ThanhVien] CHECK CONSTRAINT [FK_PhanQuyen_ThanhVien_PhanQuyen]
GO
ALTER TABLE [dbo].[PhanQuyen_ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_ThanhVien_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanQuyen_ThanhVien] CHECK CONSTRAINT [FK_PhanQuyen_ThanhVien_ThanhVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_PhanQuyen] FOREIGN KEY([MaPQ])
REFERENCES [dbo].[PhanQuyen] ([MaPQ])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_PhanQuyen]
GO
