USE [CongTyLuHanh]
GO
/****** Object:  Table [dbo].[TINH_TRANG_XE]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TINH_TRANG_XE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TINH_TRANG_XE](
	[MaTinhTrangXe] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG_XE] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[TINH_TRANG_XE] ON
INSERT [dbo].[TINH_TRANG_XE] ([MaTinhTrangXe], [TenTinhTrangXe]) VALUES (1, N'Đang sử dụng')
INSERT [dbo].[TINH_TRANG_XE] ([MaTinhTrangXe], [TenTinhTrangXe]) VALUES (2, N'Hết hạn sử dụng')
INSERT [dbo].[TINH_TRANG_XE] ([MaTinhTrangXe], [TenTinhTrangXe]) VALUES (3, N'Hư')
SET IDENTITY_INSERT [dbo].[TINH_TRANG_XE] OFF
/****** Object:  Table [dbo].[CHUC_NANG]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHUC_NANG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHUC_NANG](
	[MaChucNang] [int] IDENTITY(1,1) NOT NULL,
	[TenChucNang] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHUC_NANG] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[CHUC_NANG] ON
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (1, N'Tìm kiếm nhanh các chuyến xe')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (2, N'Tìm kiếm tuyến xe')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (3, N'Tìm kiếm chuyến xe')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (4, N'Xem thông tin chi tiết của một chuyến xe')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (5, N'Phản hồi')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (6, N'Đăng nhập')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (7, N'Đăng xuất')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (8, N'Quên mật khẩu')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (9, N'Đổi mật khẩu')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (10, N'Cập nhật thông tin cá nhân')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (11, N'Xem lương')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (12, N'Xem phản hồi của khách hàng')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (13, N'Xem nhật ký các chuyến đã chạy')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (14, N'Xem lịch chạy kế tiếp')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (15, N'Thêm xe mới')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (16, N'Cập nhật tình trạng xe')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (17, N'Phân bố xe cho tài xế')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (18, N'Thêm tuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (19, N'Cập nhật thông tin tuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (20, N'Xóa tuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (21, N'Tra cứu thông tin nhân viên')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (22, N'Thêm nhân viên')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (23, N'Cập nhật thông tin nhân viên')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (24, N'Xóa nhân viên')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (25, N'Thêm trạm')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (26, N'Cập nhật thông tin trạm')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (27, N'Tra cứu trạm')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (28, N'Xóa trạm')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (29, N'Thống kê tuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (30, N'Thống kê doanh thu')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (31, N'Thêm chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (32, N'Cập nhật thông tin chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (33, N'Hủy chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (34, N'Tra cứu chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (35, N'Phân công chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (36, N'Theo dõi các chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (37, N'Xác nhận xe tới trạm')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (38, N'Cập nhật tình trạng chỗ trên chuyến')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (39, N'Ghi phản hồi của khách hàng')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (40, N'Gửi phản hồi cho tài xế')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (41, N'Thêm tài khoản')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (42, N'Xóa tài khoản')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (43, N'Phân quyền cho tài khoản')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (44, N'Quản lý thông tin')
INSERT [dbo].[CHUC_NANG] ([MaChucNang], [TenChucNang]) VALUES (45, N'Thay đổi giao diện hệ thống')
SET IDENTITY_INSERT [dbo].[CHUC_NANG] OFF
/****** Object:  Table [dbo].[LOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOAI_NHAN_VIEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LOAI_NHAN_VIEN](
	[MaLoaiNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LOAI_NHAN_VIEN] ON
INSERT [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien], [TenLoai]) VALUES (1, N'Admin')
INSERT [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien], [TenLoai]) VALUES (2, N'Điều hành trạm')
INSERT [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien], [TenLoai]) VALUES (3, N'Điều hành công ty')
INSERT [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien], [TenLoai]) VALUES (4, N'Tài xế')
SET IDENTITY_INSERT [dbo].[LOAI_NHAN_VIEN] OFF
/****** Object:  StoredProcedure [dbo].[usp_SelectCHI_TIET_CHUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHI_TIET_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHI_TIET_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHI_TIET_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHI_TIET_CHUYEN]
	@MaChiTiet int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChiTiet],
	[MaChuyen],
	[GiaVe],
	[LuongTaiXe],
	[MaXe],
	[ThoiGianDenTram],
	[MaTinhTrang]
FROM
	[dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaChiTiet] = @MaChiTiet

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHI_TIET_CHUYENsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHI_TIET_CHUYENsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHI_TIET_CHUYENsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHI_TIET_CHUYENsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHI_TIET_CHUYENsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChiTiet],
	[MaChuyen],
	[GiaVe],
	[LuongTaiXe],
	[MaXe],
	[ThoiGianDenTram],
	[MaTinhTrang]
FROM
	[dbo].[CHI_TIET_CHUYEN]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaTinhTrang]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaTinhTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaTinhTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaTinhTrang]
	@MaTinhTrang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChiTiet],
	[MaChuyen],
	[GiaVe],
	[LuongTaiXe],
	[MaXe],
	[ThoiGianDenTram],
	[MaTinhTrang]
FROM
	[dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaTinhTrang] = @MaTinhTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaXe]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaXe]
	@MaXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChiTiet],
	[MaChuyen],
	[GiaVe],
	[LuongTaiXe],
	[MaXe],
	[ThoiGianDenTram],
	[MaTinhTrang]
FROM
	[dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaXe] = @MaXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaChuyen]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaChuyen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaChuyen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaChuyen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHI_TIET_CHUYENsByAndMaChuyen]
	@MaChuyen int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChiTiet],
	[MaChuyen],
	[GiaVe],
	[LuongTaiXe],
	[MaXe],
	[ThoiGianDenTram],
	[MaTinhTrang]
FROM
	[dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaChuyen] = @MaChuyen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaXe]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaXe]
	@MaXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaXe] = @MaXe
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateCHI_TIET_CHUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateCHI_TIET_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateCHI_TIET_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateCHI_TIET_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateCHI_TIET_CHUYEN]
	@MaChiTiet int,
	@MaChuyen int,
	@GiaVe float,
	@LuongTaiXe float,
	@MaXe int,
	@ThoiGianDenTram datetime,
	@MaTinhTrang int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaChiTiet] FROM [dbo].[CHI_TIET_CHUYEN] WHERE [MaChiTiet] = @MaChiTiet)
BEGIN
	UPDATE [dbo].[CHI_TIET_CHUYEN] SET
		[MaChuyen] = @MaChuyen,
		[GiaVe] = @GiaVe,
		[LuongTaiXe] = @LuongTaiXe,
		[MaXe] = @MaXe,
		[ThoiGianDenTram] = @ThoiGianDenTram,
		[MaTinhTrang] = @MaTinhTrang
	WHERE
		[MaChiTiet] = @MaChiTiet
END
ELSE
BEGIN
	INSERT INTO [dbo].[CHI_TIET_CHUYEN] (
		[MaChiTiet],
		[MaChuyen],
		[GiaVe],
		[LuongTaiXe],
		[MaXe],
		[ThoiGianDenTram],
		[MaTinhTrang]
	) VALUES (
		@MaChiTiet,
		@MaChuyen,
		@GiaVe,
		@LuongTaiXe,
		@MaXe,
		@ThoiGianDenTram,
		@MaTinhTrang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaChuyen]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaChuyen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaChuyen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaChuyen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaChuyen]
	@MaChuyen int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaChuyen] = @MaChuyen
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHI_TIET_CHUYEN]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHI_TIET_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHI_TIET_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHI_TIET_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHI_TIET_CHUYEN]
	@MaChiTiet int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaChiTiet] = @MaChiTiet

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaTinhTrang]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaTinhTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaTinhTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHI_TIET_CHUYENsByAndMaTinhTrang]
	@MaTinhTrang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHI_TIET_CHUYEN]
WHERE
	[MaTinhTrang] = @MaTinhTrang
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertCHI_TIET_CHUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertCHI_TIET_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertCHI_TIET_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertCHI_TIET_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertCHI_TIET_CHUYEN]
	@MaChiTiet int,
	@MaChuyen int,
	@GiaVe float,
	@LuongTaiXe float,
	@MaXe int,
	@ThoiGianDenTram datetime,
	@MaTinhTrang int
AS

SET NOCOUNT ON

INSERT INTO [dbo].[CHI_TIET_CHUYEN] (
	[MaChiTiet],
	[MaChuyen],
	[GiaVe],
	[LuongTaiXe],
	[MaXe],
	[ThoiGianDenTram],
	[MaTinhTrang]
) VALUES (
	@MaChiTiet,
	@MaChuyen,
	@GiaVe,
	@LuongTaiXe,
	@MaXe,
	@ThoiGianDenTram,
	@MaTinhTrang
)

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCHI_TIET_CHUYEN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateCHI_TIET_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateCHI_TIET_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateCHI_TIET_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateCHI_TIET_CHUYEN]
	@MaChiTiet int,
	@MaChuyen int,
	@GiaVe float,
	@LuongTaiXe float,
	@MaXe int,
	@ThoiGianDenTram datetime,
	@MaTinhTrang int
AS

SET NOCOUNT ON

UPDATE [dbo].[CHI_TIET_CHUYEN] SET
	[MaChuyen] = @MaChuyen,
	[GiaVe] = @GiaVe,
	[LuongTaiXe] = @LuongTaiXe,
	[MaXe] = @MaXe,
	[ThoiGianDenTram] = @ThoiGianDenTram,
	[MaTinhTrang] = @MaTinhTrang
WHERE
	[MaChiTiet] = @MaChiTiet

--endregion
' 
END
GO
/****** Object:  Table [dbo].[PAGES]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAGES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAGES](
	[MaTrang] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](50) NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[MaTrang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAI_XE]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOAI_XE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LOAI_XE](
	[MaLoaixe] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[HangSanXuat] [nvarchar](50) NULL,
	[SoGhe] [int] NOT NULL,
 CONSTRAINT [PK_LOAI_XE] PRIMARY KEY CLUSTERED 
(
	[MaLoaixe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[LOAI_XE] ON
INSERT [dbo].[LOAI_XE] ([MaLoaixe], [HinhAnh], [HangSanXuat], [SoGhe]) VALUES (1, N'xe1.png', N'TOYOTA', 50)
INSERT [dbo].[LOAI_XE] ([MaLoaixe], [HinhAnh], [HangSanXuat], [SoGhe]) VALUES (2, N'xe2.png', N'TOYOTA', 50)
INSERT [dbo].[LOAI_XE] ([MaLoaixe], [HinhAnh], [HangSanXuat], [SoGhe]) VALUES (3, N'xe3.png', N'BWM', 50)
INSERT [dbo].[LOAI_XE] ([MaLoaixe], [HinhAnh], [HangSanXuat], [SoGhe]) VALUES (4, N'xe4.png', N'BWM', 50)
SET IDENTITY_INSERT [dbo].[LOAI_XE] OFF
/****** Object:  Table [dbo].[TINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TINH_TRANG_CHUYEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TINH_TRANG_CHUYEN](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG_CHUYEN] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[TINH_TRANG_CHUYEN] ON
INSERT [dbo].[TINH_TRANG_CHUYEN] ([MaTinhTrang], [MoTa]) VALUES (1, N'Chưa chạy')
INSERT [dbo].[TINH_TRANG_CHUYEN] ([MaTinhTrang], [MoTa]) VALUES (2, N'Đang chạy')
INSERT [dbo].[TINH_TRANG_CHUYEN] ([MaTinhTrang], [MoTa]) VALUES (3, N'Đã về')
SET IDENTITY_INSERT [dbo].[TINH_TRANG_CHUYEN] OFF
/****** Object:  Table [dbo].[CHO_NGOI]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHO_NGOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHO_NGOI](
	[MaChoNgoi] [int] IDENTITY(1,1) NOT NULL,
	[x] [int] NOT NULL,
	[y] [int] NOT NULL,
 CONSTRAINT [PK_CHO_NGOI_1] PRIMARY KEY CLUSTERED 
(
	[MaChoNgoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PHAN_HOI_KHACH_HANG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PHAN_HOI_KHACH_HANG](
	[MaPhanHoi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
 CONSTRAINT [PK_PHAN_HOI_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TINH_TRANG_DAT_CHO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TINH_TRANG_DAT_CHO](
	[MaTinhTrangDatCho] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangDatCho] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG_DAT_CHO] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangDatCho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NHAN_VIEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NHAN_VIEN](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[LoaiNhanVien] [int] NULL,
	[LuongTrongThang] [float] NULL,
 CONSTRAINT [PK_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] ON
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (1, N'Nguyễn Văn Nam', N'0123568351', N'123, Ly thai to', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (2, N'Phạm Thị Hồng', N'0168534582', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (3, N'Trương Anh Sáng', N'0168061724', N'Bình Tân', 1, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (4, N'Phạm Thanh Phương', N'0165753877', N'Quận 8', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (5, N'Bùi Văn Khoa', N'0123765432', N'Bình Thạnh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (6, N'Trần Thị Kim Thoa', N'0123567890', N'Bình Tân', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (7, N'Phan Văn Khải', N'0111876523', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (8, N'Nguyễn Phương Trinh', N'0122876445', N'Bình Chánh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (9, N'Hồ Thanh Sáng', N'0168928899', N'Quận 8', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (10, N'Giang Thị Cẩm Hồng', N'0166097543', N'Ninh Thuận', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (11, N'Nguyễn Hồ Minh Hiếu', N'0167823798', N'Bình Chánh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (12, N'Trần Kim Anh', N'0167234781', N'Bình Tân', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (13, N'Nguyễn Văn Tuấn', N'0168238472', N'Quận 4', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (14, N'Nguyễn Trang Phương Thảo', N'0166137198', N'Bình Thạnh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (15, N'Phạm Văn Hòa', N'0162183791', N'Bến Tre', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (16, N'Bùi Thành Văn', N'095581374', N'Ninh Thuận', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (17, N'Lý Anh Đức', N'090378123', N'Tiền Giang', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (18, N'Lý Minh Khánh', N'092314189', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (19, N'Hồ Nguyễn Hữu Vinh', N'01223149187', N'Bến Tre', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (20, N'Phạm Văn Vũ', N'03731781949', N'Huyện Cần Gio', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (21, N'Trương Anh Khoa', N'01671384719', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (22, N'Trần Minh Thành', N'0931873941', N'Bình Thạnh', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (23, N'Phạm Kim Long', N'0903791841', N'Rạch Gía', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (24, N'Nguyễn Minh Lâm', N'01661839174', N'Bình Tân', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (25, N'Bùi Giang Thiệu Trung', N'01238314194', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (26, N'Lê Nguyễn Anh Vũ', N'01038719339', N'Bình Thạnh', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (27, N'Phạm Hoài An', N'02518739187', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (28, N'Trương Minh Khôi', N'06874182947', N'Bến Tre', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (29, N'Nguyễn Gia Khả Minh', N'01683791394', N'Ninh Bình', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (30, N'Lê Văn Xuân', N'01671378919', N'Bình Chánh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (31, N'Nguyễn Xuân Quốc', N'01681739131', N'Bình Tân', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (32, N'Nguyễn Minh Khang', N'01693781941', N'Bình Thạnh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (33, N'Trương Hồ Thanh Nam', N'01234364873', N'Hà Tiên', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (34, N'Trần Quốc Nguyên', N'01221387197', N'Tiền Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (35, N'Lê Văn Kha', N'01671273819', N'Bình Chánh', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (36, N'Trần Hồ Như Minh', N'01681739419', N'Bình Tân', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (37, N'Phạm Quốc Huy', N'0901348137', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (38, N'Lâm Quang Sáng', N'0901837189', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (39, N'Phạm Minh Giang', N'0903181841', N'Bình Chánh', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (40, N'Trương Khải Gia', N'0938173917', N'Quận 8', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (41, N'Bùi Văn Hiếu', N'0998379122', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (42, N'Phạm Tuấn Khoa', N'0900321213', N'Bình Chánh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (43, N'Trần Thanh Danh', N'01238379179', N'Hà Nội', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (44, N'Nguyễn Phan Thanh Trị', N'01689314189', N'Quận 4', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (45, N'Nguyễn Minh NIên', N'01241764816', N'Bình Tân', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (46, N'Bùi Thành Hải', N'01673716868', N'Quận Tân Phú', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (47, N'Lý Thanh Nhiên', N'0223918749', N'Bình Tân', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (48, N'Trần Văn Hòa', N'01658314919', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (49, N'Trương Thanh An', N'01341834791', N'Quận Tân Phú', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (50, N'Phan Xuân Nam', N'01693781974', N'Quận 7', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (51, N'Hồ Hoàn Anh', N'01678479321', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (52, N'Lý Thái Thành ', N'01676789203', N'Bến Tre', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (53, N'Nguyên Văn Trương', N'0901384917', N'Quận Tân Phú', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (54, N'Phạm Gia Khánh', N'0167342u984', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (55, N'Quách Phương Khải', N'01653491841', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (56, N'Nguyễn Hữu Vinh', N'01228371939', N'Bình Chánh', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (57, N'Phạm Quang Vinh', N'01234872198', N'Bình Chánh', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (58, N'Trần Minh Hải', N'0903194801', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (59, N'Nguyên Văn Nghi', N'0931837919', N'Lý Thái Tổ', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (60, N'Trương Minh Trí', N'0903178192', N'Tiền Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (61, N'Lý Thanh Trí', N'0167324234', N'Quận Tân Phú', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (62, N'Hồ Hữu Tài', N'0121983410', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (63, N'Phan Văn Khoa', N'0122183791', N'Ninh Thuận', 3, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (64, N'Trương Bình Trọng', N'0123193812', N'Ninh Bình', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (65, N'Phạm Văn Trương', N'0269137912', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (66, N'Lý Chiêu Khanh', N'01672342453', N'Bến Tre', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (67, N'Trần Văn Kha', N'01659384132', N'Ninh Thuận', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (68, N'Bùi Minh Khanh', N'01683419820', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (69, N'Trương Gia Hoàng ', N'09538719471', N'Tiền Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (70, N'Phạm Thanh Hòa', N'0902348273', N'Tiền Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (71, N'Lê Minh Hiếu', N'026583719419', N'Rạch Gía', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (72, N'Phạm Gia Quốc Huy', N'016638429340', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (73, N'Nguyễn Thanh Tân', N'0167342525', N'Bình Chánh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (74, N'Trương Vĩnh Trí', N'0166284592', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (75, N'Phạm Văn Hai', N'0123247523', N'Tiền Giang', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (76, N'Bùi Thành Hiếu', N'0167314681', N'Quận Tân Phú', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (77, N'Tống Thanh Toàn', N'0169835923', N'Bình Chánh', 2, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (78, N'Phan Anh Tùng', N'0166183792', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (79, N'Trương Khải Giang', N'0167234254', N'Ninh Bình', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (80, N'Phạm Quốc Hiếu', N'090132781', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (81, N'Nguyên Hòa Hải', N'095183719', N'Bến Tre', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (82, N'Lý Thanh Bình ', N'096132984', N'Quận Tân Phú', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (83, N'Bùi Nguyên Khôi', N'091819301', N'Ninh Thuận', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (84, N'Vũ Gia Nguyên Nam', N'0168319284', N'Rạch Gía', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (85, N'Phạm Hoàng Trọng Hiếu', N'0167138919', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (86, N'Lý Thành Tài', N'090381949', N'Quận 8', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (87, N'Trần Văn Khương', N'093398100', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (88, N'Lê Thành Nhã', N'091837919', N'Rạch Gía', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (89, N'Phạm Thanh Khoa', N'0168939910', N'Quận Tân Phú', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (90, N'Trần Hoàng Khanh', N'093381987', N'Bến Tre', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (91, N'Bùi Trọng Chí Hiếu', N'096183912', N'Kiên Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (92, N'Lê Khải Huy', N'097138491', N'Rạch Gía', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (93, N'Trương Thanh Hòa', N'093374816', N'Ninh Bình', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (94, N'Phạm Văn Chính', N'01673121414', N'Lý Thái Tổ', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (95, N'Trần Thanh Khoa', N'01669312080', N'Ninh Bình', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (96, N'Hồ Trọng Hiếu', N'01771367817', N'Bến Tre', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (97, N'Nguyễn Thành Khải', N'0931378183', N'Ninh Bình', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (98, N'Trần Văn Tùng', N'01672342342', N'Tiền Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (99, N'Phan Thanh Vũ', N'01673324234', N'Tiền Giang', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (100, N'Lưu Trọng Bình ', N'01663849278', N'An Giang', 4, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (101, N'Hồ Chính Trực', N'0903248289', N'Tân Bình', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (102, N'Ngô Minh Chính', N'0953822989', N'Tân Phú', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (103, N'Ngô Thiên Hòa', N'0938934729', N'Bình Chánh', 4, NULL)
INSERT [dbo].[NHAN_VIEN] ([MaNhanVien], [HoTen], [DienThoai], [DiaChi], [LoaiNhanVien], [LuongTrongThang]) VALUES (104, N'Cao Khoa Nam', N'09023482492', N'Bình Tân', 2, NULL)
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] OFF
/****** Object:  Table [dbo].[XE]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XE](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[BienSoXe] [nvarchar](50) NULL,
	[MaTaiXe] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[MaLoaiXe] [int] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_XE] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[XE] ON
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (1, N'29X-8799', 1, CAST(0x00009C9400000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (2, N'30Y-2485', 2, CAST(0x00009BBA00000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (3, N'12A-2384', 5, CAST(0x00009A3700000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (4, N'16C-3278', 6, CAST(0x00009A5600000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (5, N'20K-2382', 7, CAST(0x0000995000000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (6, N'23K-2342', 8, CAST(0x00009A9B00000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (7, N'34K-2342', 10, CAST(0x00009C2000000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (8, N'36K-2342', 11, CAST(0x00062E7D00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (9, N'37H-2342', 12, CAST(0x00009A4D00000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (10, N'60L-2348', 13, CAST(0x00009BA400000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (11, N'60K-2383', 14, CAST(0x000098E500000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (12, N'56X-3189', 18, CAST(0x00009B7C00000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (13, N'47X-3184', 21, CAST(0x000098D600000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (14, N'34T-2342', 23, CAST(0x00009A3800000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (15, N'76K-2382', 25, CAST(0x00009BBF00000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (16, N'33I-8233', 27, CAST(0x00009BE300000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (17, N'23O-3234', 28, CAST(0x00009A5600000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (18, N'61L-3453', 30, CAST(0x00009BC200000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (19, N'77P-3457', 32, CAST(0x00009D1A00000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (20, N'56L2384', 33, CAST(0x00009A3E00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (21, N'39K-2342', 34, CAST(0x000099D600000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (22, N'34U-3223', 38, CAST(0x00009CD300000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (23, N'22O-2384', 36, CAST(0x00009BC200000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (24, N'56L-2342', 37, CAST(0x00009A9E00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (25, N'11U-2834', 41, CAST(0x00009BB800000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (26, N'12-3458', 42, CAST(0x00009A3800000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (27, N'24E-2342', 43, CAST(0x00009BA600000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (28, N'47Y-3454', 44, CAST(0x00009BB200000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (29, N'37K-4575', 45, CAST(0x00009C9400000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (30, N'49K-4332', 48, CAST(0x00009CE900000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (31, N'23K-2342', 51, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (32, N'32L-2342', 54, CAST(0x00009D1A00000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (33, N'23I-2234', 56, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (34, N'32P-2324', 57, CAST(0x00009D1A00000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (35, N'12N-2342', 60, CAST(0x00009C9400000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (36, N'34M-5323', 62, CAST(0x00009C9400000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (37, N'33P-3242', 64, CAST(0x00009D1A00000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (38, N'15F-2342', 66, CAST(0x00009BE300000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (39, N'35T-3424', 67, CAST(0x00009BE300000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (40, N'28V-5234', 68, CAST(0x00009C9400000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (41, N'34H-2324', 70, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (42, N'34H-2342', 71, CAST(0x00009C9400000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (43, N'35D-2343', 72, CAST(0x00009D1A00000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (44, N'56G-4534', 73, CAST(0x00009C9400000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (45, N'32I-2342', 74, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (46, N'34F-8790', 75, CAST(0x00009C9400000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (47, N'45B-4534', 76, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (48, N'54U-4531', 87, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (49, N'43D-3242', 80, CAST(0x00009C9400000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (50, N'99B-ETRE', 81, CAST(0x00009BE300000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (51, N'89D-5345', 82, CAST(0x00009D1A00000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (52, N'90D-3453', 83, CAST(0x00009D1A00000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (53, N'74F-4654', 84, CAST(0x00009C9400000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (54, N'65F-6734', 85, CAST(0x00009BE300000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (55, N'76F-3453', 86, CAST(0x00009D1A00000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (56, N'67F-4523', 87, CAST(0x00009C9400000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (57, N'84C-4212', 88, CAST(0x00009BE300000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (58, N'12T-2323', 89, CAST(0x00009D1A00000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (59, N'12H-1232', 90, CAST(0x00009C9400000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (60, N'13F-1263', 91, CAST(0x00009BE300000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (61, N'15Y-8904', 92, CAST(0x00009D1A00000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (62, N'14F-2313', 93, CAST(0x00009C9400000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (63, N'15G-3233', 94, CAST(0x00009BE300000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (64, N'17N-3432', 95, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (65, N'18C-2342', 96, CAST(0x00009BE300000000 AS DateTime), 4, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (66, N'19R-2422', 97, CAST(0x00009BE300000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (67, N'20C-3242', 98, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (68, N'21F-3422', 99, CAST(0x00009D1A00000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (69, N'22I-2349', 100, CAST(0x00009BE300000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (70, N'32V-3898', 101, CAST(0x00009C9400000000 AS DateTime), 1, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (71, N'33F-4298', 102, CAST(0x00009BE300000000 AS DateTime), 2, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (72, N'35F-2388', 103, CAST(0x00009BE300000000 AS DateTime), 3, 1)
INSERT [dbo].[XE] ([MaXe], [BienSoXe], [MaTaiXe], [NgayNhap], [MaLoaiXe], [TinhTrang]) VALUES (73, N'39D-2349', 104, CAST(0x00009D1A00000000 AS DateTime), 4, 1)
SET IDENTITY_INSERT [dbo].[XE] OFF
/****** Object:  Table [dbo].[PAGE_CHUCNANG]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAGE_CHUCNANG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAGE_CHUCNANG](
	[MaTrang] [int] NOT NULL,
	[MaChucNang] [int] NOT NULL,
 CONSTRAINT [PK_PAGE_CHUCNANG] PRIMARY KEY CLUSTERED 
(
	[MaTrang] ASC,
	[MaChucNang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PHAN_QUYEN]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PHAN_QUYEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PHAN_QUYEN](
	[MaPhanQuyen] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiNhanVien] [int] NULL,
	[MaChucNang] [int] NULL,
 CONSTRAINT [PK_PHAN_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaPhanQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRAM_XE]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAM_XE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAM_XE](
	[MaTramXe] [int] IDENTITY(1,1) NOT NULL,
	[TenTramXe] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[MaTruongTram] [int] NULL,
 CONSTRAINT [PK_TRAM_XE] PRIMARY KEY CLUSTERED 
(
	[MaTramXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[TRAM_XE] ON
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (1, N'BX TP HCM', N'272 Đề Thám - Q1 Tp HCM', NULL, 9)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (2, N'BX Đà Lạt', N'11A Lê Quý Đôn – Đà Lạt', NULL, 16)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (3, N'BX Cần Thơ', N'13Hùng Vương – Q Ninh Kiều Cần Thơ', NULL, 17)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (4, N'Nha Trang', N'05 Lê Thánh Tôn - Tp Nha Trang', NULL, 19)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (5, N'Qui Nhơn', N'15 – Tây Sơn – Tp Quy Nhơn', NULL, 24)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (6, N'Quảng Ngãi', N'Tổ 3 - Bà Triệu – Tp Quãng Ngãi', NULL, 29)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (7, N'Bến xe Liên tỉnh Đà Nẵng', N'Bến xe Liên tỉnh Đà Nẵng', NULL, 31)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (8, N'Huế', N'Bến xe Phía Nam Tp Huế', NULL, 35)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (9, N'Mũi Né', N'97 – Nguyễn Đình Chiểu– Mũi Né', NULL, 40)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (10, N'BX Kiên Giang', N'Bến Xe Kiên Giang', NULL, 46)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (11, N'Vĩnh Long', N'Bến Xe Vĩnh Long', NULL, 58)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (12, N'Long Xuyên', N'Bến Xe long Xuyên', NULL, 63)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (13, N'BX Châu Đốc', N'123  BX Châu Đốc', NULL, 69)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (14, N'BX Cao Lãnh', N'Bến Xe Cao Lãnh', NULL, 77)
INSERT [dbo].[TRAM_XE] ([MaTramXe], [TenTramXe], [DiaChi], [HinhAnh], [MaTruongTram]) VALUES (15, N'Đà Nẵng', N'Bến Xe Đà Nẵng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TRAM_XE] OFF
/****** Object:  Table [dbo].[TUYEN_XE]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TUYEN_XE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TUYEN_XE](
	[MaTuyenXe] [int] IDENTITY(1,1) NOT NULL,
	[KhoangThoiGianDi] [float] NULL,
	[TanSuatChuyen] [float] NULL,
	[LuongTaiXe] [int] NULL,
	[MaTramDi] [int] NULL,
	[MaTramDen] [int] NOT NULL,
	[GiaVe] [int] NULL,
	[GioChayChuyenDauTienTrongNgay] [float] NOT NULL,
	[GioChayChuyenCuoiCungTrongNgay] [float] NULL,
	[TenTuyenXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_TUYEN_XE] PRIMARY KEY CLUSTERED 
(
	[MaTuyenXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[TUYEN_XE] ON
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (1, 1, 16, 300000, 2, 1, 130000, 5, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (2, 1, 4, 3500000, 2, 3, 210000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (3, 5, 4, 4500000, 2, 4, 100000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (4, 3, 3, 3000000, 2, 5, 180000, 14.5, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (5, 4, 3, 2700000, 2, 6, 190000, 14.5, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (6, 5, 3, 5000000, 2, 7, 200000, 14.5, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (7, 5, 4, 4500000, 2, 8, 190000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (8, 2, 3, 3600000, 1, 9, 220000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (9, 2.5, 2, 3800000, 1, 4, 200000, 9, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (10, 5, 2, 4100000, 1, 5, 285000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (11, 4, 2, 30000000, 1, 15, 80000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (12, 2.5, 4, 1700000, 1, 13, 120000, 8, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (13, 3, 2, 4500000, 1, 10, 300000, 9, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (14, 3, 2, 7000000, 1, 13, 120000, 9, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (15, 4.5, 1, 2400000, 1, 11, 400000, 9, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (16, 8, 4, 50000000, 1, 8, 300000, 11, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (17, 6, 1, 4600000, 1, 15, 360000, 9, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (18, 2.5, 2, 3500000, 1, 14, 190000, 10, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (19, 1, 4, 4300000, 14, 13, 230000, 8.5, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (20, 1, 3, 4500000, 14, 12, 350000, 8.5, NULL, NULL)
INSERT [dbo].[TUYEN_XE] ([MaTuyenXe], [KhoangThoiGianDi], [TanSuatChuyen], [LuongTaiXe], [MaTramDi], [MaTramDen], [GiaVe], [GioChayChuyenDauTienTrongNgay], [GioChayChuyenCuoiCungTrongNgay], [TenTuyenXe]) VALUES (21, 2.5, 5, 2800000, 14, 11, 250000, 8.5, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TUYEN_XE] OFF
/****** Object:  Table [dbo].[CHUYEN_XE]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHUYEN_XE](
	[MaChuyenXe] [int] IDENTITY(1,1) NOT NULL,
	[KhoiHanh] [datetime] NULL,
	[DuKienDen] [datetime] NULL,
	[MaTuyenXe] [int] NULL,
	[GiaVe] [float] NULL,
	[LuongTaiXe] [float] NULL,
	[MaXe] [int] NULL,
	[MaTinhTrang] [int] NULL,
 CONSTRAINT [PK_CHUYEN_XE] PRIMARY KEY CLUSTERED 
(
	[MaChuyenXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PHAN_HOI]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PHAN_HOI](
	[MaPhanHoi] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyen] [int] NULL,
	[MaPhanHoiKhach] [int] NULL,
	[MaNhanVienDuyet] [int] NULL,
 CONSTRAINT [PK_PHAN_HOI] PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TAI_KHOAN]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAI_KHOAN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TAI_KHOAN](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NgayKichHoat] [datetime] NULL,
	[MaNhanVien] [int] NULL,
 CONSTRAINT [PK_TAI_KHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[TAI_KHOAN] ON
INSERT [dbo].[TAI_KHOAN] ([MaTaiKhoan], [Username], [Password], [Email], [NgayKichHoat], [MaNhanVien]) VALUES (1, N'pvhuy', N'123456', N'huypv.it@gmail.com', CAST(0x00009E3400000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TAI_KHOAN] OFF
/****** Object:  Table [dbo].[TIN_TUC]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIN_TUC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIN_TUC](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [ntext] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[TomTat] [ntext] NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
	[MaAdminDuyet] [int] NULL,
 CONSTRAINT [PK_TIN_TUC] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DAT_CHO]    Script Date: 12/26/2010 07:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DAT_CHO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DAT_CHO](
	[MaDatCho] [int] IDENTITY(1,1) NOT NULL,
	[ViTriGhe] [int] NULL,
	[MaChiTietChuyen] [int] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_DAT_CHO] PRIMARY KEY CLUSTERED 
(
	[MaDatCho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTINH_TRANG_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTINH_TRANG_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTINH_TRANG_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTINH_TRANG_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTINH_TRANG_XE]
	@MaTinhTrangXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TINH_TRANG_XE]
WHERE
	[MaTinhTrangXe] = @MaTinhTrangXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTINH_TRANG_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTINH_TRANG_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTINH_TRANG_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTINH_TRANG_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTINH_TRANG_XE]
	@MaTinhTrangXe int,
	@TenTinhTrangXe nvarchar(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTinhTrangXe] FROM [dbo].[TINH_TRANG_XE] WHERE [MaTinhTrangXe] = @MaTinhTrangXe)
BEGIN
	UPDATE [dbo].[TINH_TRANG_XE] SET
		[TenTinhTrangXe] = @TenTinhTrangXe
	WHERE
		[MaTinhTrangXe] = @MaTinhTrangXe
END
ELSE
BEGIN
	INSERT INTO [dbo].[TINH_TRANG_XE] (
		[MaTinhTrangXe],
		[TenTinhTrangXe]
	) VALUES (
		@MaTinhTrangXe,
		@TenTinhTrangXe
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTINH_TRANG_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTINH_TRANG_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTINH_TRANG_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTINH_TRANG_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTINH_TRANG_XE]
	@MaTinhTrangXe int,
	@TenTinhTrangXe nvarchar(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[TINH_TRANG_XE] SET
	[TenTinhTrangXe] = @TenTinhTrangXe
WHERE
	[MaTinhTrangXe] = @MaTinhTrangXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTINH_TRANG_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTINH_TRANG_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTINH_TRANG_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTINH_TRANG_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTINH_TRANG_XE]
	@TenTinhTrangXe nvarchar(50),
	@MaTinhTrangXe int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TINH_TRANG_XE] (
	[TenTinhTrangXe]
) VALUES (
	@TenTinhTrangXe
)

SET @MaTinhTrangXe = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTINH_TRANG_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTINH_TRANG_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTINH_TRANG_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTINH_TRANG_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTINH_TRANG_XE]
	@MaTinhTrangXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinhTrangXe],
	[TenTinhTrangXe]
FROM
	[dbo].[TINH_TRANG_XE]
WHERE
	[MaTinhTrangXe] = @MaTinhTrangXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTINH_TRANG_XEsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTINH_TRANG_XEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTINH_TRANG_XEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTINH_TRANG_XEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTINH_TRANG_XEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinhTrangXe],
	[TenTinhTrangXe]
FROM
	[dbo].[TINH_TRANG_XE]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHUC_NANGsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHUC_NANGsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHUC_NANGsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHUC_NANGsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHUC_NANGsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChucNang],
	[TenChucNang]
FROM
	[dbo].[CHUC_NANG]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHUC_NANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHUC_NANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHUC_NANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHUC_NANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHUC_NANG]
	@MaChucNang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChucNang],
	[TenChucNang]
FROM
	[dbo].[CHUC_NANG]
WHERE
	[MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHUC_NANG]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHUC_NANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHUC_NANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHUC_NANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHUC_NANG]
	@MaChucNang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHUC_NANG]
WHERE
	[MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCHUC_NANG]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateCHUC_NANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateCHUC_NANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateCHUC_NANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateCHUC_NANG]
	@MaChucNang int,
	@TenChucNang nvarchar(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[CHUC_NANG] SET
	[TenChucNang] = @TenChucNang
WHERE
	[MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateCHUC_NANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateCHUC_NANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateCHUC_NANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateCHUC_NANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateCHUC_NANG]
	@MaChucNang int,
	@TenChucNang nvarchar(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaChucNang] FROM [dbo].[CHUC_NANG] WHERE [MaChucNang] = @MaChucNang)
BEGIN
	UPDATE [dbo].[CHUC_NANG] SET
		[TenChucNang] = @TenChucNang
	WHERE
		[MaChucNang] = @MaChucNang
END
ELSE
BEGIN
	INSERT INTO [dbo].[CHUC_NANG] (
		[MaChucNang],
		[TenChucNang]
	) VALUES (
		@MaChucNang,
		@TenChucNang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertCHUC_NANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertCHUC_NANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertCHUC_NANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertCHUC_NANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertCHUC_NANG]
	@TenChucNang nvarchar(50),
	@MaChucNang int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[CHUC_NANG] (
	[TenChucNang]
) VALUES (
	@TenChucNang
)

SET @MaChucNang = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertLOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertLOAI_NHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertLOAI_NHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertLOAI_NHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertLOAI_NHAN_VIEN]
	@TenLoai nvarchar(50),
	@MaLoaiNhanVien int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[LOAI_NHAN_VIEN] (
	[TenLoai]
) VALUES (
	@TenLoai
)

SET @MaLoaiNhanVien = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateLOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateLOAI_NHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateLOAI_NHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateLOAI_NHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateLOAI_NHAN_VIEN]
	@MaLoaiNhanVien int,
	@TenLoai nvarchar(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[LOAI_NHAN_VIEN] SET
	[TenLoai] = @TenLoai
WHERE
	[MaLoaiNhanVien] = @MaLoaiNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateLOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateLOAI_NHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateLOAI_NHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateLOAI_NHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateLOAI_NHAN_VIEN]
	@MaLoaiNhanVien int,
	@TenLoai nvarchar(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaLoaiNhanVien] FROM [dbo].[LOAI_NHAN_VIEN] WHERE [MaLoaiNhanVien] = @MaLoaiNhanVien)
BEGIN
	UPDATE [dbo].[LOAI_NHAN_VIEN] SET
		[TenLoai] = @TenLoai
	WHERE
		[MaLoaiNhanVien] = @MaLoaiNhanVien
END
ELSE
BEGIN
	INSERT INTO [dbo].[LOAI_NHAN_VIEN] (
		[MaLoaiNhanVien],
		[TenLoai]
	) VALUES (
		@MaLoaiNhanVien,
		@TenLoai
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteLOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteLOAI_NHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteLOAI_NHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteLOAI_NHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteLOAI_NHAN_VIEN]
	@MaLoaiNhanVien int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[LOAI_NHAN_VIEN]
WHERE
	[MaLoaiNhanVien] = @MaLoaiNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectLOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectLOAI_NHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectLOAI_NHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectLOAI_NHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectLOAI_NHAN_VIEN]
	@MaLoaiNhanVien int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaLoaiNhanVien],
	[TenLoai]
FROM
	[dbo].[LOAI_NHAN_VIEN]
WHERE
	[MaLoaiNhanVien] = @MaLoaiNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectLOAI_NHAN_VIENsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectLOAI_NHAN_VIENsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectLOAI_NHAN_VIENsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectLOAI_NHAN_VIENsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectLOAI_NHAN_VIENsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaLoaiNhanVien],
	[TenLoai]
FROM
	[dbo].[LOAI_NHAN_VIEN]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePAGE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdatePAGE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdatePAGE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdatePAGE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdatePAGE]
	@MaTrang int,
	@Url varchar(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[PAGES] SET
	[Url] = @Url
WHERE
	[MaTrang] = @MaTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPAGE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPAGE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPAGE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPAGE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPAGE]
	@MaTrang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTrang],
	[Url]
FROM
	[dbo].[PAGES]
WHERE
	[MaTrang] = @MaTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPAGEsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPAGEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPAGEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPAGEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPAGEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTrang],
	[Url]
FROM
	[dbo].[PAGES]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPAGE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertPAGE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertPAGE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertPAGE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertPAGE]
	@Url varchar(50),
	@MaTrang int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[PAGES] (
	[Url]
) VALUES (
	@Url
)

SET @MaTrang = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePAGE]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePAGE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePAGE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePAGE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePAGE]
	@MaTrang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PAGES]
WHERE
	[MaTrang] = @MaTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdatePAGE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdatePAGE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdatePAGE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdatePAGE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdatePAGE]
	@MaTrang int,
	@Url varchar(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTrang] FROM [dbo].[PAGES] WHERE [MaTrang] = @MaTrang)
BEGIN
	UPDATE [dbo].[PAGES] SET
		[Url] = @Url
	WHERE
		[MaTrang] = @MaTrang
END
ELSE
BEGIN
	INSERT INTO [dbo].[PAGES] (
		[MaTrang],
		[Url]
	) VALUES (
		@MaTrang,
		@Url
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateLOAI_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateLOAI_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateLOAI_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateLOAI_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateLOAI_XE]
	@MaLoaixe int,
	@HinhAnh nvarchar(50),
	@HangSanXuat nvarchar(50),
	@SoGhe int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaLoaixe] FROM [dbo].[LOAI_XE] WHERE [MaLoaixe] = @MaLoaixe)
BEGIN
	UPDATE [dbo].[LOAI_XE] SET
		[HinhAnh] = @HinhAnh,
		[HangSanXuat] = @HangSanXuat,
		[SoGhe] = @SoGhe
	WHERE
		[MaLoaixe] = @MaLoaixe
END
ELSE
BEGIN
	INSERT INTO [dbo].[LOAI_XE] (
		[MaLoaixe],
		[HinhAnh],
		[HangSanXuat],
		[SoGhe]
	) VALUES (
		@MaLoaixe,
		@HinhAnh,
		@HangSanXuat,
		@SoGhe
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertLOAI_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertLOAI_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertLOAI_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertLOAI_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertLOAI_XE]
	@HinhAnh nvarchar(50),
	@HangSanXuat nvarchar(50),
	@SoGhe int,
	@MaLoaixe int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[LOAI_XE] (
	[HinhAnh],
	[HangSanXuat],
	[SoGhe]
) VALUES (
	@HinhAnh,
	@HangSanXuat,
	@SoGhe
)

SET @MaLoaixe = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateLOAI_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateLOAI_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateLOAI_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateLOAI_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateLOAI_XE]
	@MaLoaixe int,
	@HinhAnh nvarchar(50),
	@HangSanXuat nvarchar(50),
	@SoGhe int
AS

SET NOCOUNT ON

UPDATE [dbo].[LOAI_XE] SET
	[HinhAnh] = @HinhAnh,
	[HangSanXuat] = @HangSanXuat,
	[SoGhe] = @SoGhe
WHERE
	[MaLoaixe] = @MaLoaixe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteLOAI_XE]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteLOAI_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteLOAI_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteLOAI_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteLOAI_XE]
	@MaLoaixe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[LOAI_XE]
WHERE
	[MaLoaixe] = @MaLoaixe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectLOAI_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectLOAI_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectLOAI_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectLOAI_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectLOAI_XE]
	@MaLoaixe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaLoaixe],
	[HinhAnh],
	[HangSanXuat],
	[SoGhe]
FROM
	[dbo].[LOAI_XE]
WHERE
	[MaLoaixe] = @MaLoaixe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectLOAI_XEsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectLOAI_XEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectLOAI_XEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectLOAI_XEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectLOAI_XEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaLoaixe],
	[HinhAnh],
	[HangSanXuat],
	[SoGhe]
FROM
	[dbo].[LOAI_XE]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTINH_TRANG_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTINH_TRANG_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTINH_TRANG_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTINH_TRANG_CHUYEN]
	@MoTa nvarchar(50),
	@MaTinhTrang int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TINH_TRANG_CHUYEN] (
	[MoTa]
) VALUES (
	@MoTa
)

SET @MaTinhTrang = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTINH_TRANG_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTINH_TRANG_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTINH_TRANG_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTINH_TRANG_CHUYEN]
	@MaTinhTrang int,
	@MoTa nvarchar(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[TINH_TRANG_CHUYEN] SET
	[MoTa] = @MoTa
WHERE
	[MaTinhTrang] = @MaTinhTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTINH_TRANG_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTINH_TRANG_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTINH_TRANG_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTINH_TRANG_CHUYEN]
	@MaTinhTrang int,
	@MoTa nvarchar(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTinhTrang] FROM [dbo].[TINH_TRANG_CHUYEN] WHERE [MaTinhTrang] = @MaTinhTrang)
BEGIN
	UPDATE [dbo].[TINH_TRANG_CHUYEN] SET
		[MoTa] = @MoTa
	WHERE
		[MaTinhTrang] = @MaTinhTrang
END
ELSE
BEGIN
	INSERT INTO [dbo].[TINH_TRANG_CHUYEN] (
		[MaTinhTrang],
		[MoTa]
	) VALUES (
		@MaTinhTrang,
		@MoTa
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTINH_TRANG_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTINH_TRANG_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTINH_TRANG_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTINH_TRANG_CHUYEN]
	@MaTinhTrang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TINH_TRANG_CHUYEN]
WHERE
	[MaTinhTrang] = @MaTinhTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTINH_TRANG_CHUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTINH_TRANG_CHUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTINH_TRANG_CHUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTINH_TRANG_CHUYEN]
	@MaTinhTrang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinhTrang],
	[MoTa]
FROM
	[dbo].[TINH_TRANG_CHUYEN]
WHERE
	[MaTinhTrang] = @MaTinhTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTINH_TRANG_CHUYENsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTINH_TRANG_CHUYENsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTINH_TRANG_CHUYENsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTINH_TRANG_CHUYENsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTINH_TRANG_CHUYENsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinhTrang],
	[MoTa]
FROM
	[dbo].[TINH_TRANG_CHUYEN]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDAT_CHOsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDAT_CHOsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectDAT_CHOsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectDAT_CHOsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectDAT_CHOsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaDatCho],
	[ViTriGhe],
	[MaChiTietChuyen],
	[TinhTrang]
FROM
	[dbo].[DAT_CHO]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDAT_CHOsByAndTinhTrang]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDAT_CHOsByAndTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectDAT_CHOsByAndTinhTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectDAT_CHOsByAndTinhTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectDAT_CHOsByAndTinhTrang]
	@TinhTrang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaDatCho],
	[ViTriGhe],
	[MaChiTietChuyen],
	[TinhTrang]
FROM
	[dbo].[DAT_CHO]
WHERE
	[TinhTrang] = @TinhTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDAT_CHOsByAndViTriGhe]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDAT_CHOsByAndViTriGhe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectDAT_CHOsByAndViTriGhe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectDAT_CHOsByAndViTriGhe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectDAT_CHOsByAndViTriGhe]
	@ViTriGhe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaDatCho],
	[ViTriGhe],
	[MaChiTietChuyen],
	[TinhTrang]
FROM
	[dbo].[DAT_CHO]
WHERE
	[ViTriGhe] = @ViTriGhe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDAT_CHOsByAndMaChiTietChuyen]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDAT_CHOsByAndMaChiTietChuyen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectDAT_CHOsByAndMaChiTietChuyen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectDAT_CHOsByAndMaChiTietChuyen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectDAT_CHOsByAndMaChiTietChuyen]
	@MaChiTietChuyen int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaDatCho],
	[ViTriGhe],
	[MaChiTietChuyen],
	[TinhTrang]
FROM
	[dbo].[DAT_CHO]
WHERE
	[MaChiTietChuyen] = @MaChiTietChuyen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDAT_CHO]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectDAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectDAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectDAT_CHO]
	@MaDatCho int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaDatCho],
	[ViTriGhe],
	[MaChiTietChuyen],
	[TinhTrang]
FROM
	[dbo].[DAT_CHO]
WHERE
	[MaDatCho] = @MaDatCho

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteDAT_CHOsByAndTinhTrang]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteDAT_CHOsByAndTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteDAT_CHOsByAndTinhTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteDAT_CHOsByAndTinhTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteDAT_CHOsByAndTinhTrang]
	@TinhTrang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[DAT_CHO]
WHERE
	[TinhTrang] = @TinhTrang
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteDAT_CHOsByAndViTriGhe]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteDAT_CHOsByAndViTriGhe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteDAT_CHOsByAndViTriGhe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteDAT_CHOsByAndViTriGhe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteDAT_CHOsByAndViTriGhe]
	@ViTriGhe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[DAT_CHO]
WHERE
	[ViTriGhe] = @ViTriGhe
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteDAT_CHOsByAndMaChiTietChuyen]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteDAT_CHOsByAndMaChiTietChuyen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteDAT_CHOsByAndMaChiTietChuyen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteDAT_CHOsByAndMaChiTietChuyen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteDAT_CHOsByAndMaChiTietChuyen]
	@MaChiTietChuyen int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[DAT_CHO]
WHERE
	[MaChiTietChuyen] = @MaChiTietChuyen
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertDAT_CHO]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertDAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertDAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertDAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertDAT_CHO]
	@ViTriGhe int,
	@MaChiTietChuyen int,
	@TinhTrang int,
	@MaDatCho int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[DAT_CHO] (
	[ViTriGhe],
	[MaChiTietChuyen],
	[TinhTrang]
) VALUES (
	@ViTriGhe,
	@MaChiTietChuyen,
	@TinhTrang
)

SET @MaDatCho = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateDAT_CHO]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateDAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateDAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateDAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateDAT_CHO]
	@MaDatCho int,
	@ViTriGhe int,
	@MaChiTietChuyen int,
	@TinhTrang int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaDatCho] FROM [dbo].[DAT_CHO] WHERE [MaDatCho] = @MaDatCho)
BEGIN
	UPDATE [dbo].[DAT_CHO] SET
		[ViTriGhe] = @ViTriGhe,
		[MaChiTietChuyen] = @MaChiTietChuyen,
		[TinhTrang] = @TinhTrang
	WHERE
		[MaDatCho] = @MaDatCho
END
ELSE
BEGIN
	INSERT INTO [dbo].[DAT_CHO] (
		[MaDatCho],
		[ViTriGhe],
		[MaChiTietChuyen],
		[TinhTrang]
	) VALUES (
		@MaDatCho,
		@ViTriGhe,
		@MaChiTietChuyen,
		@TinhTrang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateDAT_CHO]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateDAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateDAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateDAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateDAT_CHO]
	@MaDatCho int,
	@ViTriGhe int,
	@MaChiTietChuyen int,
	@TinhTrang int
AS

SET NOCOUNT ON

UPDATE [dbo].[DAT_CHO] SET
	[ViTriGhe] = @ViTriGhe,
	[MaChiTietChuyen] = @MaChiTietChuyen,
	[TinhTrang] = @TinhTrang
WHERE
	[MaDatCho] = @MaDatCho

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteDAT_CHO]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteDAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteDAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteDAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteDAT_CHO]
	@MaDatCho int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[DAT_CHO]
WHERE
	[MaDatCho] = @MaDatCho

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateNHAN_VIEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateNHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateNHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateNHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateNHAN_VIEN]
	@MaNhanVien int,
	@HoTen nvarchar(50),
	@DienThoai nvarchar(50),
	@DiaChi nvarchar(50),
	@LoaiNhanVien int,
	@LuongTrongThang float
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaNhanVien] FROM [dbo].[NHAN_VIEN] WHERE [MaNhanVien] = @MaNhanVien)
BEGIN
	UPDATE [dbo].[NHAN_VIEN] SET
		[HoTen] = @HoTen,
		[DienThoai] = @DienThoai,
		[DiaChi] = @DiaChi,
		[LoaiNhanVien] = @LoaiNhanVien,
		[LuongTrongThang] = @LuongTrongThang
	WHERE
		[MaNhanVien] = @MaNhanVien
END
ELSE
BEGIN
	INSERT INTO [dbo].[NHAN_VIEN] (
		[MaNhanVien],
		[HoTen],
		[DienThoai],
		[DiaChi],
		[LoaiNhanVien],
		[LuongTrongThang]
	) VALUES (
		@MaNhanVien,
		@HoTen,
		@DienThoai,
		@DiaChi,
		@LoaiNhanVien,
		@LuongTrongThang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateNHAN_VIEN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateNHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateNHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateNHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateNHAN_VIEN]
	@MaNhanVien int,
	@HoTen nvarchar(50),
	@DienThoai nvarchar(50),
	@DiaChi nvarchar(50),
	@LoaiNhanVien int,
	@LuongTrongThang float
AS

SET NOCOUNT ON

UPDATE [dbo].[NHAN_VIEN] SET
	[HoTen] = @HoTen,
	[DienThoai] = @DienThoai,
	[DiaChi] = @DiaChi,
	[LoaiNhanVien] = @LoaiNhanVien,
	[LuongTrongThang] = @LuongTrongThang
WHERE
	[MaNhanVien] = @MaNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectNHAN_VIENsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectNHAN_VIENsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectNHAN_VIENsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectNHAN_VIENsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectNHAN_VIENsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaNhanVien],
	[HoTen],
	[DienThoai],
	[DiaChi],
	[LoaiNhanVien],
	[LuongTrongThang]
FROM
	[dbo].[NHAN_VIEN]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectNHAN_VIENsByAndLoaiNhanVien]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectNHAN_VIENsByAndLoaiNhanVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectNHAN_VIENsByAndLoaiNhanVien]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectNHAN_VIENsByAndLoaiNhanVien]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectNHAN_VIENsByAndLoaiNhanVien]
	@LoaiNhanVien int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaNhanVien],
	[HoTen],
	[DienThoai],
	[DiaChi],
	[LoaiNhanVien],
	[LuongTrongThang]
FROM
	[dbo].[NHAN_VIEN]
WHERE
	[LoaiNhanVien] = @LoaiNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectNHAN_VIEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectNHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectNHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectNHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectNHAN_VIEN]
	@MaNhanVien int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaNhanVien],
	[HoTen],
	[DienThoai],
	[DiaChi],
	[LoaiNhanVien],
	[LuongTrongThang]
FROM
	[dbo].[NHAN_VIEN]
WHERE
	[MaNhanVien] = @MaNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteNHAN_VIENsByAndLoaiNhanVien]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteNHAN_VIENsByAndLoaiNhanVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteNHAN_VIENsByAndLoaiNhanVien]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteNHAN_VIENsByAndLoaiNhanVien]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteNHAN_VIENsByAndLoaiNhanVien]
	@LoaiNhanVien int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[NHAN_VIEN]
WHERE
	[LoaiNhanVien] = @LoaiNhanVien
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteNHAN_VIEN]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteNHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteNHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteNHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteNHAN_VIEN]
	@MaNhanVien int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[NHAN_VIEN]
WHERE
	[MaNhanVien] = @MaNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertNHAN_VIEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertNHAN_VIEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertNHAN_VIEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertNHAN_VIEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertNHAN_VIEN]
	@HoTen nvarchar(50),
	@DienThoai nvarchar(50),
	@DiaChi nvarchar(50),
	@LoaiNhanVien int,
	@LuongTrongThang float,
	@MaNhanVien int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[NHAN_VIEN] (
	[HoTen],
	[DienThoai],
	[DiaChi],
	[LoaiNhanVien],
	[LuongTrongThang]
) VALUES (
	@HoTen,
	@DienThoai,
	@DiaChi,
	@LoaiNhanVien,
	@LuongTrongThang
)

SET @MaNhanVien = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTRAM_XEsByAndMaTruongTram]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTRAM_XEsByAndMaTruongTram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTRAM_XEsByAndMaTruongTram]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTRAM_XEsByAndMaTruongTram]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTRAM_XEsByAndMaTruongTram]
	@MaTruongTram int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTramXe],
	[TenTramXe],
	[DiaChi],
	[HinhAnh],
	[MaTruongTram]
FROM
	[dbo].[TRAM_XE]
WHERE
	[MaTruongTram] = @MaTruongTram

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTRAM_XEsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTRAM_XEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTRAM_XEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTRAM_XEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTRAM_XEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTramXe],
	[TenTramXe],
	[DiaChi],
	[HinhAnh],
	[MaTruongTram]
FROM
	[dbo].[TRAM_XE]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTRAM_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTRAM_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTRAM_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTRAM_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTRAM_XE]
	@TenTramXe nvarchar(50),
	@DiaChi nvarchar(50),
	@HinhAnh nvarchar(50),
	@MaTruongTram int,
	@MaTramXe int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TRAM_XE] (
	[TenTramXe],
	[DiaChi],
	[HinhAnh],
	[MaTruongTram]
) VALUES (
	@TenTramXe,
	@DiaChi,
	@HinhAnh,
	@MaTruongTram
)

SET @MaTramXe = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTRAM_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTRAM_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTRAM_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTRAM_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTRAM_XE]
	@MaTramXe int,
	@TenTramXe nvarchar(50),
	@DiaChi nvarchar(50),
	@HinhAnh nvarchar(50),
	@MaTruongTram int
AS

SET NOCOUNT ON

UPDATE [dbo].[TRAM_XE] SET
	[TenTramXe] = @TenTramXe,
	[DiaChi] = @DiaChi,
	[HinhAnh] = @HinhAnh,
	[MaTruongTram] = @MaTruongTram
WHERE
	[MaTramXe] = @MaTramXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTuyenXeByMaTramDiAndMaTramDen]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTuyenXeByMaTramDiAndMaTramDen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_SelectTuyenXeByMaTramDiAndMaTramDen]
(
	@MaTramDi int,
	@MaTramDen int
)

AS

SELECT
	[MaTuyenXe],
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	TDi.TenTramXe AS [TenTramDi],
	TDen.TenTramXe AS [TenTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
FROM
	[dbo].[TUYEN_XE] AS TX, [dbo].[TRAM_XE] AS TDen , [dbo].[TRAM_XE] AS TDi
WHERE
	TX.MaTramDi = @MaTramDi
	AND TX.MaTramDen = @MaTramDen
	AND TX.MaTramDi = TDi.MaTramXe
	AND TX.MaTramDen = TDen.MaTramXe
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTRAM_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTRAM_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTRAM_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTRAM_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTRAM_XE]
	@MaTramXe int,
	@TenTramXe nvarchar(50),
	@DiaChi nvarchar(50),
	@HinhAnh nvarchar(50),
	@MaTruongTram int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTramXe] FROM [dbo].[TRAM_XE] WHERE [MaTramXe] = @MaTramXe)
BEGIN
	UPDATE [dbo].[TRAM_XE] SET
		[TenTramXe] = @TenTramXe,
		[DiaChi] = @DiaChi,
		[HinhAnh] = @HinhAnh,
		[MaTruongTram] = @MaTruongTram
	WHERE
		[MaTramXe] = @MaTramXe
END
ELSE
BEGIN
	INSERT INTO [dbo].[TRAM_XE] (
		[MaTramXe],
		[TenTramXe],
		[DiaChi],
		[HinhAnh],
		[MaTruongTram]
	) VALUES (
		@MaTramXe,
		@TenTramXe,
		@DiaChi,
		@HinhAnh,
		@MaTruongTram
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTRAM_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTRAM_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTRAM_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTRAM_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTRAM_XE]
	@MaTramXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTramXe],
	[TenTramXe],
	[DiaChi],
	[HinhAnh],
	[MaTruongTram]
FROM
	[dbo].[TRAM_XE]
WHERE
	[MaTramXe] = @MaTramXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTRAM_XEsByAndMaTruongTram]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTRAM_XEsByAndMaTruongTram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTRAM_XEsByAndMaTruongTram]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTRAM_XEsByAndMaTruongTram]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTRAM_XEsByAndMaTruongTram]
	@MaTruongTram int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TRAM_XE]
WHERE
	[MaTruongTram] = @MaTruongTram
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTRAM_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTRAM_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTRAM_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTRAM_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTRAM_XE]
	@MaTramXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TRAM_XE]
WHERE
	[MaTramXe] = @MaTramXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTUYEN_XEByTramAndGia]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTUYEN_XEByTramAndGia]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_SelectTUYEN_XEByTramAndGia]
	(
	@MaTramDi int,
	@MaTramDen int,
	@GiaVeTu int,
	@GiaVeDen int
	)
AS
SELECT
	[MaTuyenXe],
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	TDi.TenTramXe AS [TenTramDi],
	TDen.TenTramXe AS [TenTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
FROM
	[dbo].[TUYEN_XE] AS TX, [dbo].[TRAM_XE] AS TDen , [dbo].[TRAM_XE] AS TDi
WHERE
	TX.MaTramDi = @MaTramDi
	AND TX.MaTramDen = @MaTramDen
	AND TX.MaTramDi = TDi.MaTramXe
	AND TX.MaTramDen = TDen.MaTramXe
	AND TX.GiaVe >= @GiaVeTu
	AND TX.GiaVe <= @GiaVeDen
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTUYEN_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTUYEN_XE]
	@TenTuyenXe nvarchar(50),
	@KhoangThoiGianDi float,
	@TanSuatChuyen float,
	@LuongTaiXe int,
	@MaTramDi int,
	@MaTramDen int,
	@GiaVe int,
	@GioChayChuyenDauTienTrongNgay float,
	@GioChayChuyenCuoiCungTrongNgay float,
	@MaTuyenXe int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TUYEN_XE] (
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	[MaTramDi],
	[MaTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
) VALUES (
	@TenTuyenXe,
	@KhoangThoiGianDi,
	@TanSuatChuyen,
	@LuongTaiXe,
	@MaTramDi,
	@MaTramDen,
	@GiaVe,
	@GioChayChuyenDauTienTrongNgay,
	@GioChayChuyenCuoiCungTrongNgay
)

SET @MaTuyenXe = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTUYEN_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTUYEN_XE]
	@MaTuyenXe int,
	@TenTuyenXe nvarchar(50),
	@KhoangThoiGianDi float,
	@TanSuatChuyen float,
	@LuongTaiXe int,
	@MaTramDi int,
	@MaTramDen int,
	@GiaVe int,
	@GioChayChuyenDauTienTrongNgay float,
	@GioChayChuyenCuoiCungTrongNgay float
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTuyenXe] FROM [dbo].[TUYEN_XE] WHERE [MaTuyenXe] = @MaTuyenXe)
BEGIN
	UPDATE [dbo].[TUYEN_XE] SET
		[TenTuyenXe] = @TenTuyenXe,
		[KhoangThoiGianDi] = @KhoangThoiGianDi,
		[TanSuatChuyen] = @TanSuatChuyen,
		[LuongTaiXe] = @LuongTaiXe,
		[MaTramDi] = @MaTramDi,
		[MaTramDen] = @MaTramDen,
		[GiaVe] = @GiaVe,
		[GioChayChuyenDauTienTrongNgay] = @GioChayChuyenDauTienTrongNgay,
		[GioChayChuyenCuoiCungTrongNgay] = @GioChayChuyenCuoiCungTrongNgay
	WHERE
		[MaTuyenXe] = @MaTuyenXe
END
ELSE
BEGIN
	INSERT INTO [dbo].[TUYEN_XE] (
		[MaTuyenXe],
		[TenTuyenXe],
		[KhoangThoiGianDi],
		[TanSuatChuyen],
		[LuongTaiXe],
		[MaTramDi],
		[MaTramDen],
		[GiaVe],
		[GioChayChuyenDauTienTrongNgay],
		[GioChayChuyenCuoiCungTrongNgay]
	) VALUES (
		@MaTuyenXe,
		@TenTuyenXe,
		@KhoangThoiGianDi,
		@TanSuatChuyen,
		@LuongTaiXe,
		@MaTramDi,
		@MaTramDen,
		@GiaVe,
		@GioChayChuyenDauTienTrongNgay,
		@GioChayChuyenCuoiCungTrongNgay
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTUYEN_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTUYEN_XE]
	@MaTuyenXe int,
	@TenTuyenXe nvarchar(50),
	@KhoangThoiGianDi float,
	@TanSuatChuyen float,
	@LuongTaiXe int,
	@MaTramDi int,
	@MaTramDen int,
	@GiaVe int,
	@GioChayChuyenDauTienTrongNgay float,
	@GioChayChuyenCuoiCungTrongNgay float
AS

SET NOCOUNT ON

UPDATE [dbo].[TUYEN_XE] SET
	[TenTuyenXe] = @TenTuyenXe,
	[KhoangThoiGianDi] = @KhoangThoiGianDi,
	[TanSuatChuyen] = @TanSuatChuyen,
	[LuongTaiXe] = @LuongTaiXe,
	[MaTramDi] = @MaTramDi,
	[MaTramDen] = @MaTramDen,
	[GiaVe] = @GiaVe,
	[GioChayChuyenDauTienTrongNgay] = @GioChayChuyenDauTienTrongNgay,
	[GioChayChuyenCuoiCungTrongNgay] = @GioChayChuyenCuoiCungTrongNgay
WHERE
	[MaTuyenXe] = @MaTuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTUYEN_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTUYEN_XE]
	@MaTuyenXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TUYEN_XE]
WHERE
	[MaTuyenXe] = @MaTuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDi]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTUYEN_XEsByAndMaTramDi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDi]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDi]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDi]
	@MaTramDi int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TUYEN_XE]
WHERE
	[MaTramDi] = @MaTramDi
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDen]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTUYEN_XEsByAndMaTramDen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTUYEN_XEsByAndMaTramDen]
	@MaTramDen int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TUYEN_XE]
WHERE
	[MaTramDen] = @MaTramDen
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTUYEN_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTUYEN_XE]
	@MaTuyenXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTuyenXe],
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	[MaTramDi],
	[MaTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
FROM
	[dbo].[TUYEN_XE]
WHERE
	[MaTuyenXe] = @MaTuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTUYEN_XEsByAndMaTramDen]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTUYEN_XEsByAndMaTramDen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTUYEN_XEsByAndMaTramDen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTUYEN_XEsByAndMaTramDen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTUYEN_XEsByAndMaTramDen]
	@MaTramDen int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTuyenXe],
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	[MaTramDi],
	[MaTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
FROM
	[dbo].[TUYEN_XE]
WHERE
	[MaTramDen] = @MaTramDen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTUYEN_XEsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTUYEN_XEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTUYEN_XEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTUYEN_XEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTUYEN_XEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTuyenXe],
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	[MaTramDi],
	[MaTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
FROM
	[dbo].[TUYEN_XE]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTUYEN_XEsByAndMaTramDi]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTUYEN_XEsByAndMaTramDi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTUYEN_XEsByAndMaTramDi]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTUYEN_XEsByAndMaTramDi]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTUYEN_XEsByAndMaTramDi]
	@MaTramDi int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTuyenXe],
	[TenTuyenXe],
	[KhoangThoiGianDi],
	[TanSuatChuyen],
	[LuongTaiXe],
	[MaTramDi],
	[MaTramDen],
	[GiaVe],
	[GioChayChuyenDauTienTrongNgay],
	[GioChayChuyenCuoiCungTrongNgay]
FROM
	[dbo].[TUYEN_XE]
WHERE
	[MaTramDi] = @MaTramDi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectXEsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectXEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectXEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectXEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectXEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaXe],
	[BienSoXe],
	[MaTaiXe],
	[NgayNhap],
	[MaLoaiXe],
	[TinhTrang]
FROM
	[dbo].[XE]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateXE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateXE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateXE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateXE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateXE]
	@MaXe int,
	@BienSoXe nvarchar(50),
	@MaTaiXe int,
	@NgayNhap datetime,
	@MaLoaiXe int,
	@TinhTrang int
AS

SET NOCOUNT ON

UPDATE [dbo].[XE] SET
	[BienSoXe] = @BienSoXe,
	[MaTaiXe] = @MaTaiXe,
	[NgayNhap] = @NgayNhap,
	[MaLoaiXe] = @MaLoaiXe,
	[TinhTrang] = @TinhTrang
WHERE
	[MaXe] = @MaXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectXEsByAndMaTaiXe]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectXEsByAndMaTaiXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectXEsByAndMaTaiXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectXEsByAndMaTaiXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectXEsByAndMaTaiXe]
	@MaTaiXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaXe],
	[BienSoXe],
	[MaTaiXe],
	[NgayNhap],
	[MaLoaiXe],
	[TinhTrang]
FROM
	[dbo].[XE]
WHERE
	[MaTaiXe] = @MaTaiXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectXEsByAndTinhTrang]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectXEsByAndTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectXEsByAndTinhTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectXEsByAndTinhTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectXEsByAndTinhTrang]
	@TinhTrang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaXe],
	[BienSoXe],
	[MaTaiXe],
	[NgayNhap],
	[MaLoaiXe],
	[TinhTrang]
FROM
	[dbo].[XE]
WHERE
	[TinhTrang] = @TinhTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteXEsByAndMaTaiXe]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteXEsByAndMaTaiXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteXEsByAndMaTaiXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteXEsByAndMaTaiXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteXEsByAndMaTaiXe]
	@MaTaiXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[XE]
WHERE
	[MaTaiXe] = @MaTaiXe
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectXEsByAndMaLoaiXe]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectXEsByAndMaLoaiXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectXEsByAndMaLoaiXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectXEsByAndMaLoaiXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectXEsByAndMaLoaiXe]
	@MaLoaiXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaXe],
	[BienSoXe],
	[MaTaiXe],
	[NgayNhap],
	[MaLoaiXe],
	[TinhTrang]
FROM
	[dbo].[XE]
WHERE
	[MaLoaiXe] = @MaLoaiXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteXE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteXE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteXE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteXE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteXE]
	@MaXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[XE]
WHERE
	[MaXe] = @MaXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertXE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertXE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertXE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertXE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertXE]
	@BienSoXe nvarchar(50),
	@MaTaiXe int,
	@NgayNhap datetime,
	@MaLoaiXe int,
	@TinhTrang int,
	@MaXe int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[XE] (
	[BienSoXe],
	[MaTaiXe],
	[NgayNhap],
	[MaLoaiXe],
	[TinhTrang]
) VALUES (
	@BienSoXe,
	@MaTaiXe,
	@NgayNhap,
	@MaLoaiXe,
	@TinhTrang
)

SET @MaXe = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteXEsByAndTinhTrang]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteXEsByAndTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteXEsByAndTinhTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteXEsByAndTinhTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteXEsByAndTinhTrang]
	@TinhTrang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[XE]
WHERE
	[TinhTrang] = @TinhTrang
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectXE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectXE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectXE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectXE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectXE]
	@MaXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaXe],
	[BienSoXe],
	[MaTaiXe],
	[NgayNhap],
	[MaLoaiXe],
	[TinhTrang]
FROM
	[dbo].[XE]
WHERE
	[MaXe] = @MaXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteXEsByAndMaLoaiXe]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteXEsByAndMaLoaiXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteXEsByAndMaLoaiXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteXEsByAndMaLoaiXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteXEsByAndMaLoaiXe]
	@MaLoaiXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[XE]
WHERE
	[MaLoaiXe] = @MaLoaiXe
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateXE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateXE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateXE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateXE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateXE]
	@MaXe int,
	@BienSoXe nvarchar(50),
	@MaTaiXe int,
	@NgayNhap datetime,
	@MaLoaiXe int,
	@TinhTrang int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaXe] FROM [dbo].[XE] WHERE [MaXe] = @MaXe)
BEGIN
	UPDATE [dbo].[XE] SET
		[BienSoXe] = @BienSoXe,
		[MaTaiXe] = @MaTaiXe,
		[NgayNhap] = @NgayNhap,
		[MaLoaiXe] = @MaLoaiXe,
		[TinhTrang] = @TinhTrang
	WHERE
		[MaXe] = @MaXe
END
ELSE
BEGIN
	INSERT INTO [dbo].[XE] (
		[MaXe],
		[BienSoXe],
		[MaTaiXe],
		[NgayNhap],
		[MaLoaiXe],
		[TinhTrang]
	) VALUES (
		@MaXe,
		@BienSoXe,
		@MaTaiXe,
		@NgayNhap,
		@MaLoaiXe,
		@TinhTrang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateCHUYEN_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateCHUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateCHUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateCHUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateCHUYEN_XE]
	@MaChuyenXe int,
	@KhoiHanh datetime,
	@DuKienDen datetime,
	@MaTuyenXe int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaChuyenXe] FROM [dbo].[CHUYEN_XE] WHERE [MaChuyenXe] = @MaChuyenXe)
BEGIN
	UPDATE [dbo].[CHUYEN_XE] SET
		[KhoiHanh] = @KhoiHanh,
		[DuKienDen] = @DuKienDen,
		[MaTuyenXe] = @MaTuyenXe
	WHERE
		[MaChuyenXe] = @MaChuyenXe
END
ELSE
BEGIN
	INSERT INTO [dbo].[CHUYEN_XE] (
		[MaChuyenXe],
		[KhoiHanh],
		[DuKienDen],
		[MaTuyenXe]
	) VALUES (
		@MaChuyenXe,
		@KhoiHanh,
		@DuKienDen,
		@MaTuyenXe
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHUYEN_XEsByAndMaTuyenXe]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHUYEN_XEsByAndMaTuyenXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHUYEN_XEsByAndMaTuyenXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHUYEN_XEsByAndMaTuyenXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHUYEN_XEsByAndMaTuyenXe]
	@MaTuyenXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHUYEN_XE]
WHERE
	[MaTuyenXe] = @MaTuyenXe
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCHUYEN_XE]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateCHUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateCHUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateCHUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateCHUYEN_XE]
	@MaChuyenXe int,
	@KhoiHanh datetime,
	@DuKienDen datetime,
	@MaTuyenXe int
AS

SET NOCOUNT ON

UPDATE [dbo].[CHUYEN_XE] SET
	[KhoiHanh] = @KhoiHanh,
	[DuKienDen] = @DuKienDen,
	[MaTuyenXe] = @MaTuyenXe
WHERE
	[MaChuyenXe] = @MaChuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertCHUYEN_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertCHUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertCHUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertCHUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertCHUYEN_XE]
	@KhoiHanh datetime,
	@DuKienDen datetime,
	@MaTuyenXe int,
	@MaChuyenXe int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[CHUYEN_XE] (
	[KhoiHanh],
	[DuKienDen],
	[MaTuyenXe]
) VALUES (
	@KhoiHanh,
	@DuKienDen,
	@MaTuyenXe
)

SET @MaChuyenXe = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHUYEN_XEsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHUYEN_XEsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHUYEN_XEsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHUYEN_XEsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHUYEN_XEsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChuyenXe],
	[KhoiHanh],
	[DuKienDen],
	[MaTuyenXe]
FROM
	[dbo].[CHUYEN_XE]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHUYEN_XEsByAndMaTuyenXe]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHUYEN_XEsByAndMaTuyenXe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHUYEN_XEsByAndMaTuyenXe]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHUYEN_XEsByAndMaTuyenXe]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHUYEN_XEsByAndMaTuyenXe]
	@MaTuyenXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChuyenXe],
	[KhoiHanh],
	[DuKienDen],
	[MaTuyenXe]
FROM
	[dbo].[CHUYEN_XE]
WHERE
	[MaTuyenXe] = @MaTuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHUYEN_XE]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHUYEN_XE]
	@MaChuyenXe int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHUYEN_XE]
WHERE
	[MaChuyenXe] = @MaChuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHUYEN_XE]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHUYEN_XE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHUYEN_XE]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHUYEN_XE]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHUYEN_XE]
	@MaChuyenXe int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChuyenXe],
	[KhoiHanh],
	[DuKienDen],
	[MaTuyenXe]
FROM
	[dbo].[CHUYEN_XE]
WHERE
	[MaChuyenXe] = @MaChuyenXe

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOIsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOIsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOIsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOIsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOIsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[MaChuyen],
	[MaPhanHoiKhach],
	[MaNhanVienDuyet]
FROM
	[dbo].[PHAN_HOI]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOIsByAndMaPhanHoiKhach]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOIsByAndMaPhanHoiKhach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOIsByAndMaPhanHoiKhach]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOIsByAndMaPhanHoiKhach]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOIsByAndMaPhanHoiKhach]
	@MaPhanHoiKhach int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[MaChuyen],
	[MaPhanHoiKhach],
	[MaNhanVienDuyet]
FROM
	[dbo].[PHAN_HOI]
WHERE
	[MaPhanHoiKhach] = @MaPhanHoiKhach

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOIsByAndMaChuyen]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOIsByAndMaChuyen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOIsByAndMaChuyen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOIsByAndMaChuyen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOIsByAndMaChuyen]
	@MaChuyen int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[MaChuyen],
	[MaPhanHoiKhach],
	[MaNhanVienDuyet]
FROM
	[dbo].[PHAN_HOI]
WHERE
	[MaChuyen] = @MaChuyen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOIsByAndMaNhanVienDuyet]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOIsByAndMaNhanVienDuyet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOIsByAndMaNhanVienDuyet]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOIsByAndMaNhanVienDuyet]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOIsByAndMaNhanVienDuyet]
	@MaNhanVienDuyet int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[MaChuyen],
	[MaPhanHoiKhach],
	[MaNhanVienDuyet]
FROM
	[dbo].[PHAN_HOI]
WHERE
	[MaNhanVienDuyet] = @MaNhanVienDuyet

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdatePHAN_HOI]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdatePHAN_HOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdatePHAN_HOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdatePHAN_HOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdatePHAN_HOI]
	@MaPhanHoi int,
	@MaChuyen int,
	@MaPhanHoiKhach int,
	@MaNhanVienDuyet int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaPhanHoi] FROM [dbo].[PHAN_HOI] WHERE [MaPhanHoi] = @MaPhanHoi)
BEGIN
	UPDATE [dbo].[PHAN_HOI] SET
		[MaChuyen] = @MaChuyen,
		[MaPhanHoiKhach] = @MaPhanHoiKhach,
		[MaNhanVienDuyet] = @MaNhanVienDuyet
	WHERE
		[MaPhanHoi] = @MaPhanHoi
END
ELSE
BEGIN
	INSERT INTO [dbo].[PHAN_HOI] (
		[MaPhanHoi],
		[MaChuyen],
		[MaPhanHoiKhach],
		[MaNhanVienDuyet]
	) VALUES (
		@MaPhanHoi,
		@MaChuyen,
		@MaPhanHoiKhach,
		@MaNhanVienDuyet
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_HOI]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_HOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_HOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_HOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_HOI]
	@MaPhanHoi int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_HOI]
WHERE
	[MaPhanHoi] = @MaPhanHoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPHAN_HOI]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertPHAN_HOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertPHAN_HOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertPHAN_HOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertPHAN_HOI]
	@MaChuyen int,
	@MaPhanHoiKhach int,
	@MaNhanVienDuyet int,
	@MaPhanHoi int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[PHAN_HOI] (
	[MaChuyen],
	[MaPhanHoiKhach],
	[MaNhanVienDuyet]
) VALUES (
	@MaChuyen,
	@MaPhanHoiKhach,
	@MaNhanVienDuyet
)

SET @MaPhanHoi = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePHAN_HOI]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdatePHAN_HOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdatePHAN_HOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdatePHAN_HOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdatePHAN_HOI]
	@MaPhanHoi int,
	@MaChuyen int,
	@MaPhanHoiKhach int,
	@MaNhanVienDuyet int
AS

SET NOCOUNT ON

UPDATE [dbo].[PHAN_HOI] SET
	[MaChuyen] = @MaChuyen,
	[MaPhanHoiKhach] = @MaPhanHoiKhach,
	[MaNhanVienDuyet] = @MaNhanVienDuyet
WHERE
	[MaPhanHoi] = @MaPhanHoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_HOIsByAndMaPhanHoiKhach]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_HOIsByAndMaPhanHoiKhach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_HOIsByAndMaPhanHoiKhach]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_HOIsByAndMaPhanHoiKhach]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_HOIsByAndMaPhanHoiKhach]
	@MaPhanHoiKhach int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_HOI]
WHERE
	[MaPhanHoiKhach] = @MaPhanHoiKhach
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOI]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOI]
	@MaPhanHoi int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[MaChuyen],
	[MaPhanHoiKhach],
	[MaNhanVienDuyet]
FROM
	[dbo].[PHAN_HOI]
WHERE
	[MaPhanHoi] = @MaPhanHoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_HOIsByAndMaChuyen]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_HOIsByAndMaChuyen]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_HOIsByAndMaChuyen]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_HOIsByAndMaChuyen]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_HOIsByAndMaChuyen]
	@MaChuyen int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_HOI]
WHERE
	[MaChuyen] = @MaChuyen
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_HOIsByAndMaNhanVienDuyet]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_HOIsByAndMaNhanVienDuyet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_HOIsByAndMaNhanVienDuyet]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_HOIsByAndMaNhanVienDuyet]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_HOIsByAndMaNhanVienDuyet]
	@MaNhanVienDuyet int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_HOI]
WHERE
	[MaNhanVienDuyet] = @MaNhanVienDuyet
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaTrang]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePAGE_CHUCNANGsByAndMaTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaTrang]
	@MaTrang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PAGE_CHUCNANG]
WHERE
	[MaTrang] = @MaTrang
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPAGE_CHUCNANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPAGE_CHUCNANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPAGE_CHUCNANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPAGE_CHUCNANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPAGE_CHUCNANG]
	@MaTrang int,
	@MaChucNang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTrang],
	[MaChucNang]
FROM
	[dbo].[PAGE_CHUCNANG]
WHERE
	[MaTrang] = @MaTrang
	AND [MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaChucNang]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPAGE_CHUCNANGsByAndMaChucNang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaChucNang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaChucNang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaChucNang]
	@MaChucNang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTrang],
	[MaChucNang]
FROM
	[dbo].[PAGE_CHUCNANG]
WHERE
	[MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaTrang]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPAGE_CHUCNANGsByAndMaTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaTrang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaTrang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPAGE_CHUCNANGsByAndMaTrang]
	@MaTrang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTrang],
	[MaChucNang]
FROM
	[dbo].[PAGE_CHUCNANG]
WHERE
	[MaTrang] = @MaTrang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPAGE_CHUCNANGsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPAGE_CHUCNANGsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPAGE_CHUCNANGsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPAGE_CHUCNANGsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPAGE_CHUCNANGsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTrang],
	[MaChucNang]
FROM
	[dbo].[PAGE_CHUCNANG]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPAGE_CHUCNANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertPAGE_CHUCNANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertPAGE_CHUCNANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertPAGE_CHUCNANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertPAGE_CHUCNANG]
	@MaTrang int,
	@MaChucNang int
AS

SET NOCOUNT ON

INSERT INTO [dbo].[PAGE_CHUCNANG] (
	[MaTrang],
	[MaChucNang]
) VALUES (
	@MaTrang,
	@MaChucNang
)

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdatePAGE_CHUCNANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdatePAGE_CHUCNANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdatePAGE_CHUCNANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdatePAGE_CHUCNANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdatePAGE_CHUCNANG]
	@MaTrang int,
	@MaChucNang int
AS

SET NOCOUNT ON

IF NOT EXISTS(SELECT [MaTrang], [MaChucNang] FROM [dbo].[PAGE_CHUCNANG] WHERE [MaTrang] = @MaTrang AND [MaChucNang] = @MaChucNang)
BEGIN
	INSERT INTO [dbo].[PAGE_CHUCNANG] (
		[MaTrang],
		[MaChucNang]
	) VALUES (
		@MaTrang,
		@MaChucNang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePAGE_CHUCNANG]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePAGE_CHUCNANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePAGE_CHUCNANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePAGE_CHUCNANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePAGE_CHUCNANG]
	@MaTrang int,
	@MaChucNang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PAGE_CHUCNANG]
WHERE
	[MaTrang] = @MaTrang
	AND [MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaChucNang]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePAGE_CHUCNANGsByAndMaChucNang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaChucNang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaChucNang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePAGE_CHUCNANGsByAndMaChucNang]
	@MaChucNang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PAGE_CHUCNANG]
WHERE
	[MaChucNang] = @MaChucNang
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdatePHAN_QUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdatePHAN_QUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdatePHAN_QUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdatePHAN_QUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdatePHAN_QUYEN]
	@MaPhanQuyen int,
	@MaLoaiNhanVien int,
	@MaChucNang int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaPhanQuyen] FROM [dbo].[PHAN_QUYEN] WHERE [MaPhanQuyen] = @MaPhanQuyen)
BEGIN
	UPDATE [dbo].[PHAN_QUYEN] SET
		[MaLoaiNhanVien] = @MaLoaiNhanVien,
		[MaChucNang] = @MaChucNang
	WHERE
		[MaPhanQuyen] = @MaPhanQuyen
END
ELSE
BEGIN
	INSERT INTO [dbo].[PHAN_QUYEN] (
		[MaPhanQuyen],
		[MaLoaiNhanVien],
		[MaChucNang]
	) VALUES (
		@MaPhanQuyen,
		@MaLoaiNhanVien,
		@MaChucNang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_QUYEN]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_QUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_QUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_QUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_QUYEN]
	@MaPhanQuyen int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_QUYEN]
WHERE
	[MaPhanQuyen] = @MaPhanQuyen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPHAN_QUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertPHAN_QUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertPHAN_QUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertPHAN_QUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertPHAN_QUYEN]
	@MaLoaiNhanVien int,
	@MaChucNang int,
	@MaPhanQuyen int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[PHAN_QUYEN] (
	[MaLoaiNhanVien],
	[MaChucNang]
) VALUES (
	@MaLoaiNhanVien,
	@MaChucNang
)

SET @MaPhanQuyen = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePHAN_QUYEN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdatePHAN_QUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdatePHAN_QUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdatePHAN_QUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdatePHAN_QUYEN]
	@MaPhanQuyen int,
	@MaLoaiNhanVien int,
	@MaChucNang int
AS

SET NOCOUNT ON

UPDATE [dbo].[PHAN_QUYEN] SET
	[MaLoaiNhanVien] = @MaLoaiNhanVien,
	[MaChucNang] = @MaChucNang
WHERE
	[MaPhanQuyen] = @MaPhanQuyen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_QUYENsByAndMaLoaiNhanVien]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_QUYENsByAndMaLoaiNhanVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_QUYENsByAndMaLoaiNhanVien]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_QUYENsByAndMaLoaiNhanVien]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_QUYENsByAndMaLoaiNhanVien]
	@MaLoaiNhanVien int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanQuyen],
	[MaLoaiNhanVien],
	[MaChucNang]
FROM
	[dbo].[PHAN_QUYEN]
WHERE
	[MaLoaiNhanVien] = @MaLoaiNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_QUYENsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_QUYENsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_QUYENsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_QUYENsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_QUYENsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanQuyen],
	[MaLoaiNhanVien],
	[MaChucNang]
FROM
	[dbo].[PHAN_QUYEN]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_QUYEN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_QUYEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_QUYEN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_QUYEN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_QUYEN]
	@MaPhanQuyen int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanQuyen],
	[MaLoaiNhanVien],
	[MaChucNang]
FROM
	[dbo].[PHAN_QUYEN]
WHERE
	[MaPhanQuyen] = @MaPhanQuyen

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_QUYENsByAndMaChucNang]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_QUYENsByAndMaChucNang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_QUYENsByAndMaChucNang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_QUYENsByAndMaChucNang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_QUYENsByAndMaChucNang]
	@MaChucNang int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanQuyen],
	[MaLoaiNhanVien],
	[MaChucNang]
FROM
	[dbo].[PHAN_QUYEN]
WHERE
	[MaChucNang] = @MaChucNang

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_QUYENsByAndMaChucNang]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_QUYENsByAndMaChucNang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_QUYENsByAndMaChucNang]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_QUYENsByAndMaChucNang]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_QUYENsByAndMaChucNang]
	@MaChucNang int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_QUYEN]
WHERE
	[MaChucNang] = @MaChucNang
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_QUYENsByAndMaLoaiNhanVien]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_QUYENsByAndMaLoaiNhanVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_QUYENsByAndMaLoaiNhanVien]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_QUYENsByAndMaLoaiNhanVien]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_QUYENsByAndMaLoaiNhanVien]
	@MaLoaiNhanVien int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_QUYEN]
WHERE
	[MaLoaiNhanVien] = @MaLoaiNhanVien
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTIN_TUCsByAndMaAdminDuyet]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTIN_TUCsByAndMaAdminDuyet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTIN_TUCsByAndMaAdminDuyet]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTIN_TUCsByAndMaAdminDuyet]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTIN_TUCsByAndMaAdminDuyet]
	@MaAdminDuyet int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TIN_TUC]
WHERE
	[MaAdminDuyet] = @MaAdminDuyet
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTIN_TUC]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTIN_TUC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTIN_TUC]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTIN_TUC]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTIN_TUC]
	@MaTinTuc int,
	@TieuDe ntext,
	@HinhAnh nvarchar(50),
	@TomTat ntext,
	@NoiDung ntext,
	@NgayDang datetime,
	@MaAdminDuyet int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTinTuc] FROM [dbo].[TIN_TUC] WHERE [MaTinTuc] = @MaTinTuc)
BEGIN
	UPDATE [dbo].[TIN_TUC] SET
		[TieuDe] = @TieuDe,
		[HinhAnh] = @HinhAnh,
		[TomTat] = @TomTat,
		[NoiDung] = @NoiDung,
		[NgayDang] = @NgayDang,
		[MaAdminDuyet] = @MaAdminDuyet
	WHERE
		[MaTinTuc] = @MaTinTuc
END
ELSE
BEGIN
	INSERT INTO [dbo].[TIN_TUC] (
		[MaTinTuc],
		[TieuDe],
		[HinhAnh],
		[TomTat],
		[NoiDung],
		[NgayDang],
		[MaAdminDuyet]
	) VALUES (
		@MaTinTuc,
		@TieuDe,
		@HinhAnh,
		@TomTat,
		@NoiDung,
		@NgayDang,
		@MaAdminDuyet
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTIN_TUCsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTIN_TUCsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTIN_TUCsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTIN_TUCsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTIN_TUCsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinTuc],
	[TieuDe],
	[HinhAnh],
	[TomTat],
	[NoiDung],
	[NgayDang],
	[MaAdminDuyet]
FROM
	[dbo].[TIN_TUC]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTIN_TUCsByAndMaAdminDuyet]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTIN_TUCsByAndMaAdminDuyet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTIN_TUCsByAndMaAdminDuyet]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTIN_TUCsByAndMaAdminDuyet]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTIN_TUCsByAndMaAdminDuyet]
	@MaAdminDuyet int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinTuc],
	[TieuDe],
	[HinhAnh],
	[TomTat],
	[NoiDung],
	[NgayDang],
	[MaAdminDuyet]
FROM
	[dbo].[TIN_TUC]
WHERE
	[MaAdminDuyet] = @MaAdminDuyet

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTIN_TUC]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTIN_TUC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTIN_TUC]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTIN_TUC]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTIN_TUC]
	@MaTinTuc int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinTuc],
	[TieuDe],
	[HinhAnh],
	[TomTat],
	[NoiDung],
	[NgayDang],
	[MaAdminDuyet]
FROM
	[dbo].[TIN_TUC]
WHERE
	[MaTinTuc] = @MaTinTuc

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTIN_TUC]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTIN_TUC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTIN_TUC]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTIN_TUC]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTIN_TUC]
	@TieuDe ntext,
	@HinhAnh nvarchar(50),
	@TomTat ntext,
	@NoiDung ntext,
	@NgayDang datetime,
	@MaAdminDuyet int,
	@MaTinTuc int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TIN_TUC] (
	[TieuDe],
	[HinhAnh],
	[TomTat],
	[NoiDung],
	[NgayDang],
	[MaAdminDuyet]
) VALUES (
	@TieuDe,
	@HinhAnh,
	@TomTat,
	@NoiDung,
	@NgayDang,
	@MaAdminDuyet
)

SET @MaTinTuc = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTIN_TUC]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTIN_TUC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTIN_TUC]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTIN_TUC]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTIN_TUC]
	@MaTinTuc int,
	@TieuDe ntext,
	@HinhAnh nvarchar(50),
	@TomTat ntext,
	@NoiDung ntext,
	@NgayDang datetime,
	@MaAdminDuyet int
AS

SET NOCOUNT ON

UPDATE [dbo].[TIN_TUC] SET
	[TieuDe] = @TieuDe,
	[HinhAnh] = @HinhAnh,
	[TomTat] = @TomTat,
	[NoiDung] = @NoiDung,
	[NgayDang] = @NgayDang,
	[MaAdminDuyet] = @MaAdminDuyet
WHERE
	[MaTinTuc] = @MaTinTuc

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTIN_TUC]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTIN_TUC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTIN_TUC]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTIN_TUC]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTIN_TUC]
	@MaTinTuc int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TIN_TUC]
WHERE
	[MaTinTuc] = @MaTinTuc

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTAI_KHOAN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTAI_KHOAN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTAI_KHOAN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTAI_KHOAN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTAI_KHOAN]
	@MaTaiKhoan int,
	@Username nvarchar(50),
	@Password nvarchar(50),
	@Email nvarchar(50),
	@NgayKichHoat datetime,
	@MaNhanVien int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTaiKhoan] FROM [dbo].[TAI_KHOAN] WHERE [MaTaiKhoan] = @MaTaiKhoan)
BEGIN
	UPDATE [dbo].[TAI_KHOAN] SET
		[Username] = @Username,
		[Password] = @Password,
		[Email] = @Email,
		[NgayKichHoat] = @NgayKichHoat,
		[MaNhanVien] = @MaNhanVien
	WHERE
		[MaTaiKhoan] = @MaTaiKhoan
END
ELSE
BEGIN
	INSERT INTO [dbo].[TAI_KHOAN] (
		[MaTaiKhoan],
		[Username],
		[Password],
		[Email],
		[NgayKichHoat],
		[MaNhanVien]
	) VALUES (
		@MaTaiKhoan,
		@Username,
		@Password,
		@Email,
		@NgayKichHoat,
		@MaNhanVien
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTAI_KHOAN]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTAI_KHOAN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTAI_KHOAN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTAI_KHOAN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTAI_KHOAN]
	@MaTaiKhoan int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TAI_KHOAN]
WHERE
	[MaTaiKhoan] = @MaTaiKhoan

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTAI_KHOAN]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTAI_KHOAN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTAI_KHOAN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTAI_KHOAN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTAI_KHOAN]
	@MaTaiKhoan int,
	@Username nvarchar(50),
	@Password nvarchar(50),
	@Email nvarchar(50),
	@NgayKichHoat datetime,
	@MaNhanVien int
AS

SET NOCOUNT ON

UPDATE [dbo].[TAI_KHOAN] SET
	[Username] = @Username,
	[Password] = @Password,
	[Email] = @Email,
	[NgayKichHoat] = @NgayKichHoat,
	[MaNhanVien] = @MaNhanVien
WHERE
	[MaTaiKhoan] = @MaTaiKhoan

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTAI_KHOAN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTAI_KHOAN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTAI_KHOAN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTAI_KHOAN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTAI_KHOAN]
	@Username nvarchar(50),
	@Password nvarchar(50),
	@Email nvarchar(50),
	@NgayKichHoat datetime,
	@MaNhanVien int,
	@MaTaiKhoan int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TAI_KHOAN] (
	[Username],
	[Password],
	[Email],
	[NgayKichHoat],
	[MaNhanVien]
) VALUES (
	@Username,
	@Password,
	@Email,
	@NgayKichHoat,
	@MaNhanVien
)

SET @MaTaiKhoan = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTAI_KHOANsByAndMaNhanVien]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTAI_KHOANsByAndMaNhanVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTAI_KHOANsByAndMaNhanVien]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTAI_KHOANsByAndMaNhanVien]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTAI_KHOANsByAndMaNhanVien]
	@MaNhanVien int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTaiKhoan],
	[Username],
	[Password],
	[Email],
	[NgayKichHoat],
	[MaNhanVien]
FROM
	[dbo].[TAI_KHOAN]
WHERE
	[MaNhanVien] = @MaNhanVien

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTAI_KHOANsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTAI_KHOANsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTAI_KHOANsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTAI_KHOANsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTAI_KHOANsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTaiKhoan],
	[Username],
	[Password],
	[Email],
	[NgayKichHoat],
	[MaNhanVien]
FROM
	[dbo].[TAI_KHOAN]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTAI_KHOANsByAndMaNhanVien]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTAI_KHOANsByAndMaNhanVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTAI_KHOANsByAndMaNhanVien]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTAI_KHOANsByAndMaNhanVien]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTAI_KHOANsByAndMaNhanVien]
	@MaNhanVien int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TAI_KHOAN]
WHERE
	[MaNhanVien] = @MaNhanVien
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTAI_KHOAN]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTAI_KHOAN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTAI_KHOAN]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTAI_KHOAN]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTAI_KHOAN]
	@MaTaiKhoan int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTaiKhoan],
	[Username],
	[Password],
	[Email],
	[NgayKichHoat],
	[MaNhanVien]
FROM
	[dbo].[TAI_KHOAN]
WHERE
	[MaTaiKhoan] = @MaTaiKhoan

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHO_NGOI]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHO_NGOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHO_NGOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHO_NGOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHO_NGOI]
	@MaChoNgoi int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChoNgoi],
	[x],
	[y]
FROM
	[dbo].[CHO_NGOI]
WHERE
	[MaChoNgoi] = @MaChoNgoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectCHO_NGOIsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectCHO_NGOIsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectCHO_NGOIsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectCHO_NGOIsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectCHO_NGOIsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaChoNgoi],
	[x],
	[y]
FROM
	[dbo].[CHO_NGOI]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCHO_NGOI]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateCHO_NGOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateCHO_NGOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateCHO_NGOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateCHO_NGOI]
	@MaChoNgoi int,
	@x int,
	@y int
AS

SET NOCOUNT ON

UPDATE [dbo].[CHO_NGOI] SET
	[x] = @x,
	[y] = @y
WHERE
	[MaChoNgoi] = @MaChoNgoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertCHO_NGOI]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertCHO_NGOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertCHO_NGOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertCHO_NGOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertCHO_NGOI]
	@x int,
	@y int,
	@MaChoNgoi int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[CHO_NGOI] (
	[x],
	[y]
) VALUES (
	@x,
	@y
)

SET @MaChoNgoi = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCHO_NGOI]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteCHO_NGOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteCHO_NGOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteCHO_NGOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteCHO_NGOI]
	@MaChoNgoi int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[CHO_NGOI]
WHERE
	[MaChoNgoi] = @MaChoNgoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateCHO_NGOI]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateCHO_NGOI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateCHO_NGOI]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateCHO_NGOI]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateCHO_NGOI]
	@MaChoNgoi int,
	@x int,
	@y int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaChoNgoi] FROM [dbo].[CHO_NGOI] WHERE [MaChoNgoi] = @MaChoNgoi)
BEGIN
	UPDATE [dbo].[CHO_NGOI] SET
		[x] = @x,
		[y] = @y
	WHERE
		[MaChoNgoi] = @MaChoNgoi
END
ELSE
BEGIN
	INSERT INTO [dbo].[CHO_NGOI] (
		[MaChoNgoi],
		[x],
		[y]
	) VALUES (
		@MaChoNgoi,
		@x,
		@y
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdatePHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdatePHAN_HOI_KHACH_HANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdatePHAN_HOI_KHACH_HANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdatePHAN_HOI_KHACH_HANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdatePHAN_HOI_KHACH_HANG]
	@MaPhanHoi int,
	@NoiDung ntext,
	@NgayDang datetime
AS

SET NOCOUNT ON

UPDATE [dbo].[PHAN_HOI_KHACH_HANG] SET
	[NoiDung] = @NoiDung,
	[NgayDang] = @NgayDang
WHERE
	[MaPhanHoi] = @MaPhanHoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertPHAN_HOI_KHACH_HANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertPHAN_HOI_KHACH_HANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertPHAN_HOI_KHACH_HANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertPHAN_HOI_KHACH_HANG]
	@NoiDung ntext,
	@NgayDang datetime,
	@MaPhanHoi int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[PHAN_HOI_KHACH_HANG] (
	[NoiDung],
	[NgayDang]
) VALUES (
	@NoiDung,
	@NgayDang
)

SET @MaPhanHoi = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdatePHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdatePHAN_HOI_KHACH_HANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdatePHAN_HOI_KHACH_HANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdatePHAN_HOI_KHACH_HANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdatePHAN_HOI_KHACH_HANG]
	@MaPhanHoi int,
	@NoiDung ntext,
	@NgayDang datetime
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaPhanHoi] FROM [dbo].[PHAN_HOI_KHACH_HANG] WHERE [MaPhanHoi] = @MaPhanHoi)
BEGIN
	UPDATE [dbo].[PHAN_HOI_KHACH_HANG] SET
		[NoiDung] = @NoiDung,
		[NgayDang] = @NgayDang
	WHERE
		[MaPhanHoi] = @MaPhanHoi
END
ELSE
BEGIN
	INSERT INTO [dbo].[PHAN_HOI_KHACH_HANG] (
		[MaPhanHoi],
		[NoiDung],
		[NgayDang]
	) VALUES (
		@MaPhanHoi,
		@NoiDung,
		@NgayDang
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeletePHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeletePHAN_HOI_KHACH_HANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeletePHAN_HOI_KHACH_HANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeletePHAN_HOI_KHACH_HANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeletePHAN_HOI_KHACH_HANG]
	@MaPhanHoi int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[PHAN_HOI_KHACH_HANG]
WHERE
	[MaPhanHoi] = @MaPhanHoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOI_KHACH_HANGsAll]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOI_KHACH_HANGsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOI_KHACH_HANGsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOI_KHACH_HANGsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOI_KHACH_HANGsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[NoiDung],
	[NgayDang]
FROM
	[dbo].[PHAN_HOI_KHACH_HANG]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectPHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectPHAN_HOI_KHACH_HANG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectPHAN_HOI_KHACH_HANG]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectPHAN_HOI_KHACH_HANG]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectPHAN_HOI_KHACH_HANG]
	@MaPhanHoi int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaPhanHoi],
	[NoiDung],
	[NgayDang]
FROM
	[dbo].[PHAN_HOI_KHACH_HANG]
WHERE
	[MaPhanHoi] = @MaPhanHoi

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTINH_TRANG_DAT_CHOsAll]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTINH_TRANG_DAT_CHOsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTINH_TRANG_DAT_CHOsAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTINH_TRANG_DAT_CHOsAll]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTINH_TRANG_DAT_CHOsAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinhTrangDatCho],
	[TenTinhTrangDatCho]
FROM
	[dbo].[TINH_TRANG_DAT_CHO]

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectTINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectTINH_TRANG_DAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_SelectTINH_TRANG_DAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_SelectTINH_TRANG_DAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_SelectTINH_TRANG_DAT_CHO]
	@MaTinhTrangDatCho int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MaTinhTrangDatCho],
	[TenTinhTrangDatCho]
FROM
	[dbo].[TINH_TRANG_DAT_CHO]
WHERE
	[MaTinhTrangDatCho] = @MaTinhTrangDatCho

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteTINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DeleteTINH_TRANG_DAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_DeleteTINH_TRANG_DAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_DeleteTINH_TRANG_DAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_DeleteTINH_TRANG_DAT_CHO]
	@MaTinhTrangDatCho int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[TINH_TRANG_DAT_CHO]
WHERE
	[MaTinhTrangDatCho] = @MaTinhTrangDatCho

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateTINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertUpdateTINH_TRANG_DAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertUpdateTINH_TRANG_DAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertUpdateTINH_TRANG_DAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertUpdateTINH_TRANG_DAT_CHO]
	@MaTinhTrangDatCho int,
	@TenTinhTrangDatCho nvarchar(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [MaTinhTrangDatCho] FROM [dbo].[TINH_TRANG_DAT_CHO] WHERE [MaTinhTrangDatCho] = @MaTinhTrangDatCho)
BEGIN
	UPDATE [dbo].[TINH_TRANG_DAT_CHO] SET
		[TenTinhTrangDatCho] = @TenTinhTrangDatCho
	WHERE
		[MaTinhTrangDatCho] = @MaTinhTrangDatCho
END
ELSE
BEGIN
	INSERT INTO [dbo].[TINH_TRANG_DAT_CHO] (
		[MaTinhTrangDatCho],
		[TenTinhTrangDatCho]
	) VALUES (
		@MaTinhTrangDatCho,
		@TenTinhTrangDatCho
	)
END

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateTINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UpdateTINH_TRANG_DAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_UpdateTINH_TRANG_DAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_UpdateTINH_TRANG_DAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_UpdateTINH_TRANG_DAT_CHO]
	@MaTinhTrangDatCho int,
	@TenTinhTrangDatCho nvarchar(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[TINH_TRANG_DAT_CHO] SET
	[TenTinhTrangDatCho] = @TenTinhTrangDatCho
WHERE
	[MaTinhTrangDatCho] = @MaTinhTrangDatCho

--endregion
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_InsertTINH_TRANG_DAT_CHO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--region [dbo].[usp_InsertTINH_TRANG_DAT_CHO]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   HOLYONE using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[usp_InsertTINH_TRANG_DAT_CHO]
-- Date Generated: Tuesday, December 14, 2010
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[usp_InsertTINH_TRANG_DAT_CHO]
	@TenTinhTrangDatCho nvarchar(50),
	@MaTinhTrangDatCho int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[TINH_TRANG_DAT_CHO] (
	[TenTinhTrangDatCho]
) VALUES (
	@TenTinhTrangDatCho
)

SET @MaTinhTrangDatCho = SCOPE_IDENTITY()

--endregion
' 
END
GO
/****** Object:  Default [DF_CHUYEN_XE_MaTinhTrang]    Script Date: 12/26/2010 07:43:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CHUYEN_XE_MaTinhTrang]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CHUYEN_XE_MaTinhTrang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CHUYEN_XE] ADD  CONSTRAINT [DF_CHUYEN_XE_MaTinhTrang]  DEFAULT ((1)) FOR [MaTinhTrang]
END


End
GO
/****** Object:  ForeignKey [FK_CHUYEN_XE_TINH_TRANG_CHUYEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHUYEN_XE_TINH_TRANG_CHUYEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
ALTER TABLE [dbo].[CHUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYEN_XE_TINH_TRANG_CHUYEN] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TINH_TRANG_CHUYEN] ([MaTinhTrang])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHUYEN_XE_TINH_TRANG_CHUYEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
ALTER TABLE [dbo].[CHUYEN_XE] CHECK CONSTRAINT [FK_CHUYEN_XE_TINH_TRANG_CHUYEN]
GO
/****** Object:  ForeignKey [FK_CHUYEN_XE_TUYEN_XE]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHUYEN_XE_TUYEN_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
ALTER TABLE [dbo].[CHUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYEN_XE_TUYEN_XE] FOREIGN KEY([MaTuyenXe])
REFERENCES [dbo].[TUYEN_XE] ([MaTuyenXe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHUYEN_XE_TUYEN_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
ALTER TABLE [dbo].[CHUYEN_XE] CHECK CONSTRAINT [FK_CHUYEN_XE_TUYEN_XE]
GO
/****** Object:  ForeignKey [FK_CHUYEN_XE_XE]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHUYEN_XE_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
ALTER TABLE [dbo].[CHUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYEN_XE_XE] FOREIGN KEY([MaXe])
REFERENCES [dbo].[XE] ([MaXe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHUYEN_XE_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHUYEN_XE]'))
ALTER TABLE [dbo].[CHUYEN_XE] CHECK CONSTRAINT [FK_CHUYEN_XE_XE]
GO
/****** Object:  ForeignKey [FK_DAT_CHO_CHO_NGOI]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DAT_CHO_CHO_NGOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DAT_CHO]'))
ALTER TABLE [dbo].[DAT_CHO]  WITH CHECK ADD  CONSTRAINT [FK_DAT_CHO_CHO_NGOI] FOREIGN KEY([ViTriGhe])
REFERENCES [dbo].[CHO_NGOI] ([MaChoNgoi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DAT_CHO_CHO_NGOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DAT_CHO]'))
ALTER TABLE [dbo].[DAT_CHO] CHECK CONSTRAINT [FK_DAT_CHO_CHO_NGOI]
GO
/****** Object:  ForeignKey [FK_DAT_CHO_TINH_TRANG_DAT_CHO]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DAT_CHO_TINH_TRANG_DAT_CHO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DAT_CHO]'))
ALTER TABLE [dbo].[DAT_CHO]  WITH CHECK ADD  CONSTRAINT [FK_DAT_CHO_TINH_TRANG_DAT_CHO] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINH_TRANG_DAT_CHO] ([MaTinhTrangDatCho])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DAT_CHO_TINH_TRANG_DAT_CHO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DAT_CHO]'))
ALTER TABLE [dbo].[DAT_CHO] CHECK CONSTRAINT [FK_DAT_CHO_TINH_TRANG_DAT_CHO]
GO
/****** Object:  ForeignKey [FK_NHAN_VIEN_LOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NHAN_VIEN_LOAI_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[NHAN_VIEN]'))
ALTER TABLE [dbo].[NHAN_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHAN_VIEN_LOAI_NHAN_VIEN] FOREIGN KEY([LoaiNhanVien])
REFERENCES [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NHAN_VIEN_LOAI_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[NHAN_VIEN]'))
ALTER TABLE [dbo].[NHAN_VIEN] CHECK CONSTRAINT [FK_NHAN_VIEN_LOAI_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_PAGE_CHUCNANG_CHUC_NANG]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PAGE_CHUCNANG_CHUC_NANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[PAGE_CHUCNANG]'))
ALTER TABLE [dbo].[PAGE_CHUCNANG]  WITH CHECK ADD  CONSTRAINT [FK_PAGE_CHUCNANG_CHUC_NANG] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[CHUC_NANG] ([MaChucNang])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PAGE_CHUCNANG_CHUC_NANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[PAGE_CHUCNANG]'))
ALTER TABLE [dbo].[PAGE_CHUCNANG] CHECK CONSTRAINT [FK_PAGE_CHUCNANG_CHUC_NANG]
GO
/****** Object:  ForeignKey [FK_PAGE_CHUCNANG_Pages]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PAGE_CHUCNANG_Pages]') AND parent_object_id = OBJECT_ID(N'[dbo].[PAGE_CHUCNANG]'))
ALTER TABLE [dbo].[PAGE_CHUCNANG]  WITH CHECK ADD  CONSTRAINT [FK_PAGE_CHUCNANG_Pages] FOREIGN KEY([MaTrang])
REFERENCES [dbo].[PAGES] ([MaTrang])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PAGE_CHUCNANG_Pages]') AND parent_object_id = OBJECT_ID(N'[dbo].[PAGE_CHUCNANG]'))
ALTER TABLE [dbo].[PAGE_CHUCNANG] CHECK CONSTRAINT [FK_PAGE_CHUCNANG_Pages]
GO
/****** Object:  ForeignKey [FK_PHAN_HOI_CHUYEN_XE]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_HOI_CHUYEN_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]'))
ALTER TABLE [dbo].[PHAN_HOI]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_HOI_CHUYEN_XE] FOREIGN KEY([MaChuyen])
REFERENCES [dbo].[CHUYEN_XE] ([MaChuyenXe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_HOI_CHUYEN_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]'))
ALTER TABLE [dbo].[PHAN_HOI] CHECK CONSTRAINT [FK_PHAN_HOI_CHUYEN_XE]
GO
/****** Object:  ForeignKey [FK_PHAN_HOI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_HOI_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]'))
ALTER TABLE [dbo].[PHAN_HOI]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_HOI_NHAN_VIEN] FOREIGN KEY([MaNhanVienDuyet])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_HOI_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]'))
ALTER TABLE [dbo].[PHAN_HOI] CHECK CONSTRAINT [FK_PHAN_HOI_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_PHAN_HOI_PHAN_HOI_KHACH_HANG]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_HOI_PHAN_HOI_KHACH_HANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]'))
ALTER TABLE [dbo].[PHAN_HOI]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_HOI_PHAN_HOI_KHACH_HANG] FOREIGN KEY([MaPhanHoiKhach])
REFERENCES [dbo].[PHAN_HOI_KHACH_HANG] ([MaPhanHoi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_HOI_PHAN_HOI_KHACH_HANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_HOI]'))
ALTER TABLE [dbo].[PHAN_HOI] CHECK CONSTRAINT [FK_PHAN_HOI_PHAN_HOI_KHACH_HANG]
GO
/****** Object:  ForeignKey [FK_PHAN_QUYEN_CHUC_NANG]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_QUYEN_CHUC_NANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_QUYEN]'))
ALTER TABLE [dbo].[PHAN_QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_QUYEN_CHUC_NANG] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[CHUC_NANG] ([MaChucNang])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_QUYEN_CHUC_NANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_QUYEN]'))
ALTER TABLE [dbo].[PHAN_QUYEN] CHECK CONSTRAINT [FK_PHAN_QUYEN_CHUC_NANG]
GO
/****** Object:  ForeignKey [FK_PHAN_QUYEN_LOAI_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_QUYEN_LOAI_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_QUYEN]'))
ALTER TABLE [dbo].[PHAN_QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_QUYEN_LOAI_NHAN_VIEN] FOREIGN KEY([MaLoaiNhanVien])
REFERENCES [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PHAN_QUYEN_LOAI_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[PHAN_QUYEN]'))
ALTER TABLE [dbo].[PHAN_QUYEN] CHECK CONSTRAINT [FK_PHAN_QUYEN_LOAI_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TAI_KHOAN_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TAI_KHOAN_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TAI_KHOAN]'))
ALTER TABLE [dbo].[TAI_KHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAI_KHOAN_NHAN_VIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TAI_KHOAN_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TAI_KHOAN]'))
ALTER TABLE [dbo].[TAI_KHOAN] CHECK CONSTRAINT [FK_TAI_KHOAN_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TIN_TUC_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIN_TUC_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIN_TUC]'))
ALTER TABLE [dbo].[TIN_TUC]  WITH CHECK ADD  CONSTRAINT [FK_TIN_TUC_NHAN_VIEN] FOREIGN KEY([MaAdminDuyet])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIN_TUC_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIN_TUC]'))
ALTER TABLE [dbo].[TIN_TUC] CHECK CONSTRAINT [FK_TIN_TUC_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TRAM_XE_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRAM_XE_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAM_XE]'))
ALTER TABLE [dbo].[TRAM_XE]  WITH CHECK ADD  CONSTRAINT [FK_TRAM_XE_NHAN_VIEN] FOREIGN KEY([MaTruongTram])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRAM_XE_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAM_XE]'))
ALTER TABLE [dbo].[TRAM_XE] CHECK CONSTRAINT [FK_TRAM_XE_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TUYEN_XE_TRAM_XE_DEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TUYEN_XE_TRAM_XE_DEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TUYEN_XE]'))
ALTER TABLE [dbo].[TUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_TUYEN_XE_TRAM_XE_DEN] FOREIGN KEY([MaTramDen])
REFERENCES [dbo].[TRAM_XE] ([MaTramXe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TUYEN_XE_TRAM_XE_DEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TUYEN_XE]'))
ALTER TABLE [dbo].[TUYEN_XE] CHECK CONSTRAINT [FK_TUYEN_XE_TRAM_XE_DEN]
GO
/****** Object:  ForeignKey [FK_TUYEN_XE_TRAM_XE_DI]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TUYEN_XE_TRAM_XE_DI]') AND parent_object_id = OBJECT_ID(N'[dbo].[TUYEN_XE]'))
ALTER TABLE [dbo].[TUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_TUYEN_XE_TRAM_XE_DI] FOREIGN KEY([MaTramDi])
REFERENCES [dbo].[TRAM_XE] ([MaTramXe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TUYEN_XE_TRAM_XE_DI]') AND parent_object_id = OBJECT_ID(N'[dbo].[TUYEN_XE]'))
ALTER TABLE [dbo].[TUYEN_XE] CHECK CONSTRAINT [FK_TUYEN_XE_TRAM_XE_DI]
GO
/****** Object:  ForeignKey [FK_XE_LOAI_XE]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XE_LOAI_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[XE]'))
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_LOAI_XE] FOREIGN KEY([MaLoaiXe])
REFERENCES [dbo].[LOAI_XE] ([MaLoaixe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XE_LOAI_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[XE]'))
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_LOAI_XE]
GO
/****** Object:  ForeignKey [FK_XE_NHAN_VIEN]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XE_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[XE]'))
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_NHAN_VIEN] FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XE_NHAN_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[XE]'))
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_XE_TINH_TRANG_XE]    Script Date: 12/26/2010 07:43:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XE_TINH_TRANG_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[XE]'))
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_TINH_TRANG_XE] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINH_TRANG_XE] ([MaTinhTrangXe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XE_TINH_TRANG_XE]') AND parent_object_id = OBJECT_ID(N'[dbo].[XE]'))
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_TINH_TRANG_XE]
GO
