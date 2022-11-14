CREATE DATABASE Baithuchanhso2

GO

USE Baithuchanhso2

GO
--------------------------------------------------------------
CREATE TABLE DON_VI_UNG_HO
(
	MaDVUH NCHAR(10),
	HoTenNguoiDaiDien NVARCHAR(50),
	DiaChiNguoiDaiDien NVARCHAR(50),
	SoDienThoaiLienLac CHAR(15),
	SoCMNDNguoiDaiDien CHAR(15),
	SoTaiKhoanNganHang CHAR(15),
	TenNganHang NVARCHAR(50),
	ChiNhanhNganHang NVARCHAR(50),
	TenChuTKNganHang NVARCHAR(50),
	PRIMARY KEY(MaDVUH)
)

CREATE TABLE DOT_UNG_HO
(
	MaDotUngHo NCHAR(10),
	MaDVUH NCHAR(10),
	NgayUngHo DATE,
	PRIMARY KEY(MaDotUngHo)
)

CREATE TABLE CHI_TIET_UNG_HO
(
	MaDotUngHo NCHAR(10),
	MaHinhThucUH NCHAR(10),
	SoLuongUngHo INT,
	DonViTinh NVARCHAR(50),
	PRIMARY KEY(MaDotUngHo,MaHinhThucUH)
)

CREATE TABLE HINH_THUC_UH
(
	MaHinhThucUH NCHAR(10),
	TenHinhThucUngHo NVARCHAR(50),
	PRIMARY KEY(MaHinhThucUH)
)

CREATE TABLE HO_DAN
(
	MaHoDan NCHAR(10),
	HoTenChuHo NVARCHAR(50),
	ToDanPho INT,
	KhoiHoacThon INT,
	SoDienThoai CHAR(10),
	DiaChiNha NVARCHAR(50),
	SoNhanKhau INT,
	DienGiaDinh NVARCHAR(50),
	LaHoNgheo NVARCHAR(10),
	PRIMARY KEY(MaHoDan)
)

CREATE TABLE  DOT_NHAN_UNG_HO
(
	MaDotNhanUngHo NCHAR(10),
	MaHoDan NCHAR(10),
	NgayNhanUngHo DATE,
	PRIMARY KEY(MaDotNhanUngHo)
)

CREATE TABLE CHI_TIET_NHAN_UNG_HO
(
	MaDotNhanUngHo NCHAR(10),
	MaHinhThucUH NCHAR(10),
	SoLuongNhanUngHo INT,
	DonViTinh NCHAR(15),
	PRIMARY KEY(MaDotNhanUngHo,MaHinhThucUH)
)

ALTER TABLE dbo.DOT_UNG_HO ADD CONSTRAINT D1 FOREIGN KEY(MaDVUH) REFERENCES dbo.DON_VI_UNG_HO(MaDVUH)

ALTER TABLE dbo.CHI_TIET_UNG_HO ADD CONSTRAINT D2 FOREIGN KEY(MaDotUngHo) REFERENCES dbo.DOT_UNG_HO(MaDotUngHo)

ALTER TABLE dbo.CHI_TIET_UNG_HO ADD CONSTRAINT D3 FOREIGN KEY(MaHinhThucUH) REFERENCES dbo.HINH_THUC_UH(MaHinhThucUH)

ALTER TABLE dbo.DOT_NHAN_UNG_HO ADD CONSTRAINT D4 FOREIGN KEY(MaHoDan) REFERENCES dbo.HO_DAN(MaHoDan)

ALTER TABLE dbo.CHI_TIET_NHAN_UNG_HO ADD CONSTRAINT D5 FOREIGN KEY(MaDotNhanUngHo) REFERENCES dbo.DOT_NHAN_UNG_HO(MaDotNhanUngHo)

ALTER TABLE dbo.CHI_TIET_NHAN_UNG_HO ADD CONSTRAINT D6 FOREIGN KEY(MaHinhThucUH) REFERENCES dbo.HINH_THUC_UH(MaHinhThucUH)

---------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO dbo.DON_VI_UNG_HO
(
    MaDVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNganHang,
    TenNganHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CN001', -- MaDVUH - nchar(10)
    N'Nguyen Van A1', -- HoTenNguoiDaiDien - nvarchar(50)
    N'Nui Thanh, Quang Nam', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121121',  -- SoDienThoaiLienLac - char(15)
    '124898000',  -- SoCMNDNguoiDaiDien - char(15)
    '65874000',  -- SoTaiKhoanNganHang - char(15)
    N'TienPhongBank', -- TenNganHang - nvarchar(50)
    N'Da Nang', -- ChiNhanhNganHang - nvarchar(50)
    N'Nguyen Van A1'  -- TenChuTKNganHang - nvarchar(50)
    )
INSERT INTO dbo.DON_VI_UNG_HO
(
    MaDVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNganHang,
    TenNganHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CN002', -- MaDVUH - nchar(10)
    N'Nguyen Van A2', -- HoTenNguoiDaiDien - nvarchar(50)
    N'Phong Dien, Thua Thien Hue', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121122',  -- SoDienThoaiLienLac - char(15)
    '124898001',  -- SoCMNDNguoiDaiDien - char(15)
    '65874001',  -- SoTaiKhoanNganHang - char(15)
    N'VietComBank', -- TenNganHang - nvarchar(50)
    N'Quang Nam', -- ChiNhanhNganHang - nvarchar(50)
    N'Nguyen Van A2'  -- TenChuTKNganHang - nvarchar(50)
    )

INSERT INTO dbo.DON_VI_UNG_HO
(
    MaDVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNganHang,
    TenNganHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CTY01', -- MaDVUH - nchar(10)
    N'Nguyen Van A3', -- HoTenNguoiDaiDien - nvarchar(50)
    N'Tam Dao, Vinh Phuc', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121123',  -- SoDienThoaiLienLac - char(15)
    '12489802',  -- SoCMNDNguoiDaiDien - char(15)
    '65874002',  -- SoTaiKhoanNganHang - char(15)
    N'DongA', -- TenNganHang - nvarchar(50)
    N'Thua Thien Hue', -- ChiNhanhNganHang - nvarchar(50)
    N'Nguyen Van A3
	'  -- TenChuTKNganHang - nvarchar(50)
    )

INSERT INTO dbo.DON_VI_UNG_HO
(
    MaDVUH,
    HoTenNguoiDaiDien,
    DiaChiNguoiDaiDien,
    SoDienThoaiLienLac,
    SoCMNDNguoiDaiDien,
    SoTaiKhoanNganHang,
    TenNganHang,
    ChiNhanhNganHang,
    TenChuTKNganHang
)
VALUES
(   N'CTY02', -- MaDVUH - nchar(10)
    N'Nguyen Van A4', -- HoTenNguoiDaiDien - nvarchar(50)
    N'Ba To, Quang Ngai', -- DiaChiNguoiDaiDien - nvarchar(50)
    '0905121124',  -- SoDienThoaiLienLac - char(15)
    '124898003',  -- SoCMNDNguoiDaiDien - char(15)
    '65874003',  -- SoTaiKhoanNganHang - char(15)
    N'MBBank', -- TenNganHang - nvarchar(50)
    N'Gia Lai', -- ChiNhanhNganHang - nvarchar(50)
    N'Nguyen Van A4'  -- TenChuTKNganHang - nvarchar(50)
    )

--------------------------------------------------------------

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH001',      -- MaDotUngHo - nchar(10)
    N'CN002',      -- MaDVUH - nchar(10)
    DATEFROMPARTS(2016,11,18) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH002',      -- MaDotUngHo - nchar(10)
    N'CTY01',      -- MaDVUH - nchar(10)
    DATEFROMPARTS(2015,11,19) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH003',      -- MaDotUngHo - nchar(10)
    N'CTY02',      -- MaDVUH - nchar(10)
    DATEFROMPARTS(2015,08,10) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH004',      -- MaDotUngHo - nchar(10)
    N'CTY02',      -- MaDVUH - nchar(10)
    DATEFROMPARTS(2015,10,20) -- NgayUngHo - date
    )

INSERT INTO dbo.DOT_UNG_HO
(
    MaDotUngHo,
    MaDVUH,
    NgayUngHo
)
VALUES
(   N'UH005',      -- MaDotUngHo - nchar(10)
    N'CTY02',      -- MaDVUH - nchar(10)
    DATEFROMPARTS(2016,11,11) -- NgayUngHo - date
    )

----------------------------------------------------------------------------------------
INSERT INTO dbo.HINH_THUC_UH
(
    MaHinhThucUH,
    TenHinhThucUngHo
)
VALUES
(   N'HT01', -- MaHinhThucUH - nchar(10)
    N'Tien mat'  -- TenHinhThucUngHo - nvarchar(50)
    )


INSERT INTO dbo.HINH_THUC_UH
(
    MaHinhThucUH,
    TenHinhThucUngHo
)
VALUES
(   N'HT02', -- MaHinhThucUH - nchar(10)
    N'Mi tom'  -- TenHinhThucUngHo - nvarchar(50)
    )

INSERT INTO dbo.HINH_THUC_UH
(
    MaHinhThucUH,
    TenHinhThucUngHo
)
VALUES
(   N'HT03', -- MaHinhThucUH - nchar(10)
    N'Quan ao'  -- TenHinhThucUngHo - nvarchar(50)
    )
-----------------------------------------------------------
INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH001', -- MaDotUngHo - nchar(10)
    N'HT01', -- MaHinhThucUH - nchar(10)
    6000,   -- SoLuongUngHo - int
    N'USD'  -- DonViTinh - nvarchar(50)
    )

INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH002', -- MaDotUngHo - nchar(10)
    N'HT02', -- MaHinhThucUH - nchar(10)
    50,   -- SoLuongUngHo - int
    N'Thung'  -- DonViTinh - nvarchar(50)
    )

INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH003', -- MaDotUngHo - nchar(10)
    N'HT03', -- MaHinhThucUH - nchar(10)
    200,   -- SoLuongUngHo - int
    N'Bo'  -- DonViTinh - nvarchar(50)
    )


INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH003', -- MaDotUngHo - nchar(10)
    N'HT01', -- MaHinhThucUH - nchar(10)
    100000,   -- SoLuongUngHo - int
    N'JPY'  -- DonViTinh - nvarchar(50)
    )


INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH004', -- MaDotUngHo - nchar(10)
    N'HT01', -- MaHinhThucUH - nchar(10)
    100000,   -- SoLuongUngHo - int
    N'USD'  -- DonViTinh - nvarchar(50)
    )

INSERT INTO dbo.CHI_TIET_UNG_HO
(
    MaDotUngHo,
    MaHinhThucUH,
    SoLuongUngHo,
    DonViTinh
)
VALUES
(   N'UH005', -- MaDotUngHo - nchar(10)
    N'HT03', -- MaHinhThucUH - nchar(10)
    100,   -- SoLuongUngHo - int
    N'Bo'  -- DonViTinh - nvarchar(50)
    )
------------------------------------------------------------
INSERT INTO dbo.HO_DAN
(
    MaHoDan,
    HoTenChuHo,
    ToDanPho,
    KhoiHoacThon,
    SoDienThoai,
    DiaChiNha,
    SoNhanKhau,
    DienGiaDinh,
    LaHoNgheo
)
VALUES
(   N'HD001', -- MaHoDan - nchar(10)
    N'Tran Van B1', -- HoTenChuHo - nvarchar(50)
    10,   -- ToDanPho - int
    5,   -- KhoiHoacThon - int
    '0915222000',  -- SoDienThoai - char(10)
    N'12 Tran Van On', -- DiaChiNha - nvarchar(50)
    5,   -- SoNhanKhau - int
    N'Cong nha vien chuc', -- DienGiaDinh - nvarchar(50)
    N'Dung'  -- LaHoNgheo - nvarchar(10)
    )

INSERT INTO dbo.HO_DAN
(
    MaHoDan,
    HoTenChuHo,
    ToDanPho,
    KhoiHoacThon,
    SoDienThoai,
    DiaChiNha,
    SoNhanKhau,
    DienGiaDinh,
    LaHoNgheo
)
VALUES
(   N'HD002', -- MaHoDan - nchar(10)
    N'Tran Van B2', -- HoTenChuHo - nvarchar(50)
    11,   -- ToDanPho - int
    6,   -- KhoiHoacThon - int
    '0915222001',  -- SoDienThoai - char(10)
    N'13 Nguyen Huu Tho', -- DiaChiNha - nvarchar(50)
    2,   -- SoNhanKhau - int
    N'Cong nha vien chuc', -- DienGiaDinh - nvarchar(50)
    N'Sai'  -- LaHoNgheo - nvarchar(10)
    )

INSERT INTO dbo.HO_DAN
(
    MaHoDan,
    HoTenChuHo,
    ToDanPho,
    KhoiHoacThon,
    SoDienThoai,
    DiaChiNha,
    SoNhanKhau,
    DienGiaDinh,
    LaHoNgheo
)
VALUES
(   N'HD003', -- MaHoDan - nchar(10)
    N'Tran Van B3', -- HoTenChuHo - nvarchar(50)
    12,   -- ToDanPho - int
    7,   -- KhoiHoacThon - int
    '0915222002',  -- SoDienThoai - char(10)
    N'14 Phan Chau Trinh', -- DiaChiNha - nvarchar(50)
    6,   -- SoNhanKhau - int
    N'Thuong Binh', -- DienGiaDinh - nvarchar(50)
    N'Dung'  -- LaHoNgheo - nvarchar(10)
    )


INSERT INTO dbo.HO_DAN
(
    MaHoDan,
    HoTenChuHo,
    ToDanPho,
    KhoiHoacThon,
    SoDienThoai,
    DiaChiNha,
    SoNhanKhau,
    DienGiaDinh,
    LaHoNgheo
)
VALUES
(   N'HD004', -- MaHoDan - nchar(10)
    N'Tran Van B4', -- HoTenChuHo - nvarchar(50)
    13,   -- ToDanPho - int
    7,   -- KhoiHoacThon - int
    '0915222003',  -- SoDienThoai - char(10)
    N'15 Phan Chau Trinh', -- DiaChiNha - nvarchar(50)
    1,   -- SoNhanKhau - int
    N'Me VNAH', -- DienGiaDinh - nvarchar(50)
    N'Dung'  -- LaHoNgheo - nvarchar(10)
    )

------------------------------------------------------------------
INSERT INTO dbo.DOT_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHoDan,
    NgayNhanUngHo
)
VALUES
(   N'NhanUH001',      -- MaDotNhanUngHo - nchar(10)
    N'HD003',      -- MaHoDan - nchar(10)
    DATEFROMPARTS(2016,11,11) -- NgayNhanUngHo - date
    )

INSERT INTO dbo.DOT_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHoDan,
    NgayNhanUngHo
)
VALUES
(   N'NhanUH002',      -- MaDotNhanUngHo - nchar(10)
    N'HD001',      -- MaHoDan - nchar(10)
    DATEFROMPARTS(2016,11,18) -- NgayNhanUngHo - date
    )

INSERT INTO dbo.DOT_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHoDan,
    NgayNhanUngHo
)
VALUES
(   N'NhanUH003',      -- MaDotNhanUngHo - nchar(10)
    N'HD003',      -- MaHoDan - nchar(10)
    DATEFROMPARTS(2016,11,20) -- NgayNhanUngHo - date
    )

---------------------------------------------------------------
INSERT INTO dbo.CHI_TIET_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo,
    DonViTinh
)
VALUES
(   N'NhanUH001', -- MaDotNhanUngHo - nchar(10)
    N'HT01', -- MaHinhThucUH - nchar(10)
    5000,   -- SoLuongNhanUngHo - int
    N'USD'  -- DonViTinh - nchar(15)
    ) 

INSERT INTO dbo.CHI_TIET_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo,
    DonViTinh
)
VALUES
(   N'NhanUH001', -- MaDotNhanUngHo - nchar(10)
    N'HT02', -- MaHinhThucUH - nchar(10)
    50,   -- SoLuongNhanUngHo - int
    N'Thung'  -- DonViTinh - nchar(15)
    ) 

INSERT INTO dbo.CHI_TIET_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo,
    DonViTinh
)
VALUES
(   N'NhanUH002', -- MaDotNhanUngHo - nchar(10)
    N'HT03', -- MaHinhThucUH - nchar(10)
    100,   -- SoLuongNhanUngHo - int
    N'Bo'  -- DonViTinh - nchar(15)
    ) 


INSERT INTO dbo.CHI_TIET_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo,
    DonViTinh
)
VALUES
(   N'NhanUH003', -- MaDotNhanUngHo - nchar(10)
    N'HT01', -- MaHinhThucUH - nchar(10)
    1000000,   -- SoLuongNhanUngHo - int
    N'VND'  -- DonViTinh - nchar(15)
    ) 


INSERT INTO dbo.CHI_TIET_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo,
    DonViTinh
)
VALUES
(   N'NhanUH003', -- MaDotNhanUngHo - nchar(10)
    N'HT02', -- MaHinhThucUH - nchar(10)
    25,   -- SoLuongNhanUngHo - int
    N'Thung'  -- DonViTinh - nchar(15)
    ) 


INSERT INTO dbo.CHI_TIET_NHAN_UNG_HO
(
    MaDotNhanUngHo,
    MaHinhThucUH,
    SoLuongNhanUngHo,
    DonViTinh
)
VALUES
(   N'NhanUH003', -- MaDotNhanUngHo - nchar(10)
    N'HT03', -- MaHinhThucUH - nchar(10)
    70,   -- SoLuongNhanUngHo - int
    N'Bo'  -- DonViTinh - nchar(15)
    ) 

-----------------------------------------------------------------------------------------------------------------------------------

--Câu 1.Xoá những đơn vị ủng hộ có tài khoản ngân hàng được mở ở ngân hàng "DongA"

DELETE FROM dbo.DON_VI_UNG_HO WHERE TenNganHang ='DongA'

--Câu 2.

UPDATE dbo.HINH_THUC_UH
SET TenHinhThucUngHo = 'Mi an lien'
WHERE TenHinhThucUngHo = 'Mi tom' 

--Câu 3:

SELECT *FROM dbo.HO_DAN
WHERE HoTenChuHo LIKE 'Ph%'
AND LEN(HoTenChuHo) <= 30


--Câu 4:

SELECT  DNUH.* FROM dbo.DOT_NHAN_UNG_HO AS DNUH INNER JOIN dbo.HO_DAN AS HD 
ON HD.MaHoDan = DNUH.MaHoDan
WHERE YEAR(DNUH.NgayNhanUngHo) = 2016
AND DNUH.MaHoDan LIKE '%1'

SELECT * FROM dbo.DOT_NHAN_UNG_HO
WHERE YEAR( NgayNhanUngHo) = 2016
AND MaHoDan LIKE '%1'

--Câu 6:

SELECT  HD.* FROM dbo.HO_DAN AS HD INNER JOIN dbo.DOT_NHAN_UNG_HO AS DNUH
ON DNUH.MaHoDan = HD.MaHoDan 
AND HD.MaHoDan NOT IN 
(
	SELECT  MaHoDan FROM dbo.DOT_NHAN_UNG_HO 
)

SELECT *FROM dbo.HO_DAN 
WHERE LaHoNgheo = 'Dung'
AND MaHoDan NOT IN
(
	SELECT  MaHoDan FROM dbo.DOT_NHAN_UNG_HO
)
 
--Câu 8:l
SELECT 
HD. MaHoDan,
HD. HoTenChuHo,
HD. ToDanPho,
HD. KhoiHoacThon,
DNUH. MaDotNhanUngHo,
DNUH. NgayNhanUngHo,
CTNUH.MaHinhThucUH,
CTNUH.SoLuongNhanUngHo,
CTNUH.DonViTinh
FROM dbo.HO_DAN AS HD LEFT JOIN dbo.DOT_NHAN_UNG_HO AS DNUH
ON DNUH.MaHoDan = HD.MaHoDan
LEFT JOIN dbo.CHI_TIET_NHAN_UNG_HO AS CTNUH
ON CTNUH.MaDotNhanUngHo = DNUH.MaDotNhanUngHo

-- Câu 9:BTHS2
SELECT  DVUH. MaDVUH, DVUH.TenNganHang, DVUH. TenChuTKNganHang FROM dbo.DON_VI_UNG_HO AS DVUH INNER JOIN dbo.DOT_UNG_HO AS DUH
ON DUH.MaDVUH = DVUH.MaDVUH
INNER JOIN dbo.CHI_TIET_UNG_HO AS CTUH 
ON CTUH.MaDotUngHo = DUH.MaDotUngHo
INNER JOIN dbo.HINH_THUC_UH AS HTUH
ON HTUH.MaHinhThucUH = CTUH.MaHinhThucUH
WHERE DVUH.TenNganHang = 'MBBank' AND DUH.NgayUngHo >= '2015/01/01' AND DUH.NgayUngHo < '2015/12/31' 
AND HTUH.TenHinhThucUngHo ='Mi an lien'
GROUP BY DVUH. MaDVUH, DVUH.TenNganHang, DVUH. TenChuTKNganHang 
HAVING COUNT(DVUH.MaDVUH) >= 2

--Câu 10:BTHS2

SELECT HD.*, CTNUH.MaHinhThucUH  FROM dbo.HO_DAN AS HD INNER JOIN dbo.DOT_NHAN_UNG_HO AS DNUH
ON DNUH.MaHoDan = HD.MaHoDan
INNER JOIN dbo.CHI_TIET_NHAN_UNG_HO AS CTNUH
ON CTNUH.MaDotNhanUngHo = DNUH.MaDotNhanUngHo
WHERE CTNUH.MaHinhThucUH = 'HT02'
EXCEPT
(
	SELECT  HD.*, CTNUH.MaHinhThucUH  FROM dbo.HO_DAN AS HD INNER JOIN dbo.DOT_NHAN_UNG_HO AS DNUH
	ON DNUH.MaHoDan = HD.MaHoDan
	INNER JOIN dbo.CHI_TIET_NHAN_UNG_HO AS CTNUH
	ON CTNUH.MaDotNhanUngHo = DNUH.MaDotNhanUngHo
	WHERE CTNUH.MaHinhThucUH ='HT04'
)

--Câu 5
SELECT  DVUH. MaDVUH, DVUH. HoTenNguoiDaiDien, DUH. MaDotUngHo, DUH. NgayUngHo
FROM dbo.DON_VI_UNG_HO AS DVUH INNER JOIN dbo.DOT_UNG_HO AS DUH
ON DUH.MaDVUH = DVUH.MaDVUH
WHERE DUH.NgayUngHo <'2016/04/30'
ORDER BY DUH.NgayUngHo DESC, DVUH.HoTenNguoiDaiDien ASC