USE [QLCafe]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [nvarchar](50) NOT NULL,
	[KhuVuc] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSMON]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSMON](
	[MAMON] [nvarchar](50) NOT NULL,
	[LOAI] [nvarchar](50) NULL,
	[TENMON] [nvarchar](50) NULL,
	[DONVITINH] [nvarchar](50) NULL,
	[DONGIA] [money] NULL,
	[TRANGTHAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_DSMON] PRIMARY KEY CLUSTERED 
(
	[MAMON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKV] [nvarchar](50) NOT NULL,
	[TenKV] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[GioiTinh] [nvarchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_per_relationship]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_per_relationship](
	[id_rel] [int] NOT NULL,
	[id_user_rel] [int] NOT NULL,
	[id_per_rel] [int] NOT NULL,
	[suspended] [bit] NULL,
 CONSTRAINT [PK_tbl_per_relationship] PRIMARY KEY CLUSTERED 
(
	[id_rel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_permision]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_permision](
	[id_per] [int] NOT NULL,
	[name_per] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_permision] PRIMARY KEY CLUSTERED 
(
	[id_per] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_permision_detail]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_permision_detail](
	[id_pd] [int] NOT NULL,
	[name_action] [nvarchar](50) NULL,
	[code_action] [varchar](50) NULL,
	[id_per] [int] NULL,
 CONSTRAINT [PK_tbl_permision_detail] PRIMARY KEY CLUSTERED 
(
	[id_pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 11/2/2021 10:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[id_user] [int] NOT NULL,
	[name_user] [nvarchar](50) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban01', N'A', N'Đã có khách')
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban02', N'B', N'Đã đặt trước')
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban03', N'VIP', N'Chưa có khách')
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban04', N'B', N'Đã đặt trước')
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban05', N'B', N'Chưa có khách')
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban06', N'VIP', N'Đã đặt trước')
INSERT [dbo].[Ban] ([MaBan], [KhuVuc], [TrangThai]) VALUES (N'Ban07', N'VIP', N'Đã có khách')
INSERT [dbo].[DSMON] ([MAMON], [LOAI], [TENMON], [DONVITINH], [DONGIA], [TRANGTHAI]) VALUES (N'01', N'Cafe', N'cafe sữa', N'Ly', 5000.0000, N'Còn hàng ')
INSERT [dbo].[DSMON] ([MAMON], [LOAI], [TENMON], [DONVITINH], [DONGIA], [TRANGTHAI]) VALUES (N'02', N'Trà trái cây', N'Trà đào cam xả', N'Ly', 50000.0000, N'Còn hàng ')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DienThoai]) VALUES (N'KH001', N'Trần Ái Nhi', N'02541836913')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DienThoai]) VALUES (N'KH002', N'Gia Bảo', N'097294275')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DienThoai]) VALUES (N'KH003', N'Khanh Đức B', N'06868483')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DienThoai]) VALUES (N'KH005', N'Mít', N'0686858483')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV], [TrangThai], [GhiChu]) VALUES (N'KV01', N'A', N'Hoạt động', N'AS')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV], [TrangThai], [GhiChu]) VALUES (N'KV02', N'B', N'Ngưng hoạt động', N'Đang sửa chữa')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV], [TrangThai], [GhiChu]) VALUES (N'KV03', N'B', N'Hoạt động', N'HD')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV], [TrangThai], [GhiChu]) VALUES (N'KV04', N'B', N'Hoạt động', N'HD')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV], [TrangThai], [GhiChu]) VALUES (N'KV05', N'VIP', N'Hoạt động', N'HD')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DienThoai], [DiaChi], [GioiTinh]) VALUES (N'NV001', N'Lưu Văn Hòa', N'0368963207', N'Quận Cam', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DienThoai], [DiaChi], [GioiTinh]) VALUES (N'NV002', N'Minh Tú', N'0726492741', N'Quận 9', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DienThoai], [DiaChi], [GioiTinh]) VALUES (N'NV003', N'Trần Văn Dũng', N'0894722314', N'Q2', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DienThoai], [DiaChi], [GioiTinh]) VALUES (N'NV004', N'Trần Văn D', N'0894722314', N'Q2', N'Nam')
INSERT [dbo].[tbl_per_relationship] ([id_rel], [id_user_rel], [id_per_rel], [suspended]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tbl_permision] ([id_per], [name_per], [description]) VALUES (1, N'Quản trị', N'Nhóm quyền cao nhất')
INSERT [dbo].[tbl_permision] ([id_per], [name_per], [description]) VALUES (2, N'Nhân viên', N'Nhóm chỉ thao tác thêm bàn vs món')
INSERT [dbo].[tbl_permision_detail] ([id_pd], [name_action], [code_action], [id_per]) VALUES (1, N'add', N'ADD', 1)
INSERT [dbo].[tbl_user] ([id_user], [name_user], [user_name], [pass]) VALUES (1, N'Đức Hòa', N'admin', N'admin')
INSERT [dbo].[tbl_user] ([id_user], [name_user], [user_name], [pass]) VALUES (2, N'NN', N'123', N'123')
ALTER TABLE [dbo].[tbl_per_relationship]  WITH CHECK ADD  CONSTRAINT [FK_tbl_per_relationship_tbl_permision] FOREIGN KEY([id_per_rel])
REFERENCES [dbo].[tbl_permision] ([id_per])
GO
ALTER TABLE [dbo].[tbl_per_relationship] CHECK CONSTRAINT [FK_tbl_per_relationship_tbl_permision]
GO
ALTER TABLE [dbo].[tbl_per_relationship]  WITH CHECK ADD  CONSTRAINT [FK_tbl_per_relationship_tbl_user] FOREIGN KEY([id_user_rel])
REFERENCES [dbo].[tbl_user] ([id_user])
GO
ALTER TABLE [dbo].[tbl_per_relationship] CHECK CONSTRAINT [FK_tbl_per_relationship_tbl_user]
GO
ALTER TABLE [dbo].[tbl_permision_detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_permision_detail_tbl_permision] FOREIGN KEY([id_per])
REFERENCES [dbo].[tbl_permision] ([id_per])
GO
ALTER TABLE [dbo].[tbl_permision_detail] CHECK CONSTRAINT [FK_tbl_permision_detail_tbl_permision]
GO
