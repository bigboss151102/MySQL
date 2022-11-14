CREATE DATABASE Bai_thuc_hanh_so_2nhothaycheck

GO

USE Bai_thuc_hanh_so_2nhothaycheck

GO


-- TAỌ BẢNG ĐƠN VỊ ỦNG HỘ

CREATE TABLE DON_VI_UNG_HO
(
	MADVUH NCHAR(5),
	HoTenNguoiDaiDien NVARCHAR(30),
	DiaChiNguoiDaiDien NVARCHAR(50),
	SoDienThoaiLienLac CHAR(10),
	SoCMNDNguoiDaiDien CHAR(9),
	SoTaiKhoanNghanHang CHAR(8),
	TenNghanHang NVARCHAR(15),
	ChiNhanhNganHang NVARCHAR(15),
	TenChuTKNganHang NVARCHAR(30),
	PRIMARY KEY(MADVUH)
)

--TẠO BẢNG DOT_UNG_HO

CREATE TABLE DOT_UNG_HO
(
	MaDotUngHo NCHAR(5),
	MaDVUH NCHAR(5),
	NgayUngHo DATE,
	PRIMARY KEY(MaDotUngHo)
)

--TẠO BẢNG CHI TIET UNG HO

CREATE TABLE CHI_TIET_UNG_HO
(
	MaDotUngHo NCHAR(5),
	MaHinhThucUH NCHAR(4),
	SoLuongUngHo INT,
	DonViTinh NVARCHAR(5),
	PRIMARY KEY(MaDotUngHo,MaHinhThucUH)
)
--TOẠ BẢNG HO_DAN

CREATE TABLE HO_DAN
(
	MaHoDan NCHAR(5),
	HoTenChuHo NVARCHAR(15),
	ToDanPho INT,
	SoDienThoai CHAR(10),
	DiaChiNha NVARCHAR(50),
	SoNhanKhau INT,
	DienGiaDinh NVARCHAR(30),
	LaHoNgheo NVARCHAR(4),
	PRIMARY KEY(MaHoDan)
)

--TẠO BẢNG HINH_THUC_UH

CREATE TABLE HINH_THUC_UH
(
	MaHinhThucUH NCHAR(4),
	TenHinhThucUngHo NVARCHAR(7),
	PRIMARY KEY(MaHinhThucUH)
)
-- TẠO BẢNG DOT_NHAN_UNG_HO

CREATE TABLE DOT_NHAN_UNG_HO
(
	MaDotNhanUngHo NCHAR(9),
	MaHoDan NCHAR(5),
	NgayNhanUngHo DATE,
	PRIMARY KEY(MaDotNhanUngHo)
)

--TẠO BẢNG CHI_TIET-NHAN_UNG_HO

CREATE TABLE CHI_TIET_NHAN_UNG_HO
(
	MaDotNhanUngHo NCHAR(9),
	MaHinhThucUH NCHAR(4),
	SoLuongNhaUngHo INT,
	DonViTinh NVARCHAR(5)
	PRIMARY KEY(MaDotNhanUngHo,MaHinhThucUH)
)

-- TẠO KHOÁ NGOẠI DOT_UNG_HO

ALTER TABLE dbo.DOT_UNG_HO 
	ADD CONSTRAINT FK_DUT1
	FOREIGN KEY(MaDVUH)
	REFERENCES dbo.DON_VI_UNG_HO(MADVUH)

--TẠO KHOÁ NGOẠI CHO DOT_NHAN_UNG_HO

ALTER TABLE dbo.DOT_NHAN_UNG_HO 
	ADD CONSTRAINT FK_DUT2
	FOREIGN KEY(MaHoDan)
	REFERENCES dbo.HO_DAN(MaHoDan)

--TẠO KHOÁ NGOẠI CHO BẢNG CHI_TIET_UNG_HO

ALTER TABLE dbo.CHI_TIET_UNG_HO 
	ADD CONSTRAINT FK_DUT3
	FOREIGN KEY(MaDotUngHo)
	REFERENCES dbo.DOT_UNG_HO(MaDotUngHo)

ALTER TABLE dbo.CHI_TIET_UNG_HO
	ADD CONSTRAINT FK_DUT4
	FOREIGN KEY(MaHinhThucUH)
	REFERENCES dbo.HINH_THUC_UH (MaHinhThucUH)

--TẠO KHOÁ NGOẠI CHO CHI_TIET_NHAN_UNG_HO
ALTER TABLE dbo.CHI_TIET_NHAN_UNG_HO 
	ADD CONSTRAINT FK_DUT5
	FOREIGN KEY(MaDotNhanUngHo)
	REFERENCES dbo.DOT_NHAN_UNG_HO(MaDotNhanUngHo)

ALTER TABLE dbo.CHI_TIET_NHAN_UNG_HO
	ADD CONSTRAINT FK_DUT6
	FOREIGN KEY(MaHinhThucUH)
	REFERENCES dbo.HINH_THUC_UH(MaHinhThucUH)


--TẠO DỮ LIỆU CHO BẢNG DON_VI_UNG_HO

INSERT INTO dbo.DON_VI_UNG_HO
(
    MADVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNghanHang,
    TenNghanHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CN001', -- MADVUH - nchar(5)
    N'Nguyen Van A1', -- HoTenNguoiDaiDien - nvarchar(30)
    N'Nui Thanh, Quang Nam', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121121',  -- SoDienThoaiLienLac - char(10)
    '124898000',  -- SoCMNDNguoiDaiDien - char(9)
    '65874000',  -- SoTaiKhoanNghanHang - char(8)
    N'TienPhongBank', -- TenNghanHang - nvarchar(15)
    N'Da Nang', -- ChiNhanhNganHang - nvarchar(15)
    N'Nguyen Van A1'  -- TenChuTKNganHang - nvarchar(30)
    )

INSERT INTO dbo.DON_VI_UNG_HO
(
    MADVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNghanHang,
    TenNghanHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CN002', -- MADVUH - nchar(5)
    N'Nguyen Van A2', -- HoTenNguoiDaiDien - nvarchar(30)
    N'Phong Dien, Thua', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121122',  -- SoDienThoaiLienLac - char(10)
    '124898001',  -- SoCMNDNguoiDaiDien - char(9)
    '65874001',  -- SoTaiKhoanNghanHang - char(8)
    N'Vietcom', -- TenNghanHang - nvarchar(15)
    N'Quang Nam', -- ChiNhanhNganHang - nvarchar(15)
    N'Nguyen Van A2'  -- TenChuTKNganHang - nvarchar(30)
    )

INSERT INTO dbo.DON_VI_UNG_HO
(
    MADVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNghanHang,
    TenNghanHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CTY01', -- MADVUH - nchar(5)
    N'Nguyen Van A3', -- HoTenNguoiDaiDien - nvarchar(30)
    N'Tam Dao, Vinh Phuc', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121123',  -- SoDienThoaiLienLac - char(10)
    '124898002',  -- SoCMNDNguoiDaiDien - char(9)
    '65874002',  -- SoTaiKhoanNghanHang - char(8)
    N'DongA', -- TenNghanHang - nvarchar(15)
    N'Thua Thien Hue', -- ChiNhanhNganHang - nvarchar(15)
    N'Nguyen Van A3'  -- TenChuTKNganHang - nvarchar(30)
    )
INSERT INTO dbo.DON_VI_UNG_HO
(
    MADVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNghanHang,
    TenNghanHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CTY02', -- MADVUH - nchar(5)
    N'Nguyen Van A4', -- HoTenNguoiDaiDien - nvarchar(30)
    N'Ba To, Quang Ngai', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121124',  -- SoDienThoaiLienLac - char(10)
    '124898003',  -- SoCMNDNguoiDaiDien - char(9)
    '65874003',  -- SoTaiKhoanNghanHang - char(8)
    N'MBank', -- TenNghanHang - nvarchar(15)
    N'Gia Lai', -- ChiNhanhNganHang - nvarchar(15)
    N'Nguyen Van A4'  -- TenChuTKNganHang - nvarchar(30)
    )

--TẠO DỮ LIỆU CHO DOT_UNG_HO

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH001',      -- MaDotUngHo - nchar(5)
    N'CN002',      -- MaDVUH - nchar(5)
    DATEFROMPARTS(2016,11,18) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH002',      -- MaDotUngHo - nchar(5)
    N'CTY01',      -- MaDVUH - nchar(5)
    DATEFROMPARTS(2015,11,19) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH003',      -- MaDotUngHo - nchar(5)
    N'CTY02',      -- MaDVUH - nchar(5)
    DATEFROMPARTS(2015,08,10) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH004',      -- MaDotUngHo - nchar(5)
    N'CTY02',      -- MaDVUH - nchar(5)
    DATEFROMPARTS(2015,10,20) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH005',      -- MaDotUngHo - nchar(5)
    N'CTY02',      -- MaDVUH - nchar(5)
    DATEFROMPARTS(2016,11,11) -- NgayUngHo - date
    )

--TẠO DỮ LIỆU CHO BẢNG CHI_TIET_UNG_HO

INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH001', -- MaDotUngHo - nchar(5)
    N'HT01', -- MaHinhThucUH - nchar(4)
    6000,   -- SoLuongUngHo - int
    N'USD'  -- DonViTinh - nvarchar(5)
    )

