CREATE DATABASE TestGiuaKi
GO
USE TestGiuaKi

CREATE TABLE GIAOVIEN
(
	MaGiaoVien NCHAR(10),
	HoTen NVARCHAR(50),
	MaKhoa NCHAR(10),
	PRIMARY KEY(MaGiaoVien)
)

CREATE TABLE KHOA
(
	MaKhoa NCHAR(10),
	TenKhoa NVARCHAR(50),
	DienThoai CHAR(10),
	PRIMARY KEY(MaKhoa)
)

CREATE TABLE MONHOC
(
	MaMonHoc NCHAR(10),
	TenMonHoc NVARCHAR(50),
	SoTinChi INT,
	PRIMARY KEY(MaMonHoc)
)

CREATE TABLE TKB
(
	SoThuTu INT,
	HocKy INT,
	MaGiaoVien NCHAR(10),
	MaMonHoc NCHAR(10),
	PhongHoc NCHAR(5),
	Thu NCHAR(10),
	TietBatDau INT,
	TietKetThuc INT,
)

ALTER TABLE dbo.GIAOVIEN ADD CONSTRAINT T1 FOREIGN KEY(MaKhoa) REFERENCES dbo.KHOA(MaKhoa)

ALTER TABLE dbo.TKB ADD CONSTRAINT T2 FOREIGN KEY(MaGiaoVien) REFERENCES dbo.GIAOVIEN(MaGiaoVien)

ALTER TABLE dbo.TKB ADD CONSTRAINT T3 FOREIGN KEY(MaMonHoc) REFERENCES dbo.MONHOC(MaMonHoc)

INSERT INTO dbo.KHOA
(
    MaKhoa,
    TenKhoa,
    DienThoai
)
VALUES
(   N'DUT1', -- MaKhoa - nchar(10)
    N'Cong Nghe Thong Tin', -- TenKhoa - nvarchar(50)
    '0905111111'   -- DienThoai - char(10)
    )

INSERT INTO dbo.KHOA
(
    MaKhoa,
    TenKhoa,
    DienThoai
)
VALUES
(   N'DUT2', -- MaKhoa - nchar(10)
    N'Dien', -- TenKhoa - nvarchar(50)
    '0905111112'   -- DienThoai - char(10)
    )

INSERT INTO dbo.KHOA
(
    MaKhoa,
    TenKhoa,
    DienThoai
)
VALUES
(   N'DUT3', -- MaKhoa - nchar(10)
    N'Xay Dung', -- TenKhoa - nvarchar(50)
    '0905111113'   -- DienThoai - char(10)
    )

INSERT INTO dbo.GIAOVIEN
(
    MaGiaoVien,
    HoTen,
    MaKhoa
)
VALUES
(   N'GV001', -- MaGiaoVien - nchar(10)
    N'Pham Cong Thang', -- HoTen - nvarchar(50)
    N'DUT1'  -- MaKhoa - nchar(10)
    )

INSERT INTO dbo.GIAOVIEN
(
    MaGiaoVien,
    HoTen,
    MaKhoa
)
VALUES
(   N'GV002', -- MaGiaoVien - nchar(10)
    N'Nguyen Van Hieu', -- HoTen - nvarchar(50)
    N'DUT2'  -- MaKhoa - nchar(10)
    )

INSERT INTO dbo.GIAOVIEN
(
    MaGiaoVien,
    HoTen,
    MaKhoa
)
VALUES
(   N'GV003', -- MaGiaoVien - nchar(10)
    N'Le Tran Duc', -- HoTen - nvarchar(50)
    N'DUT1'  -- MaKhoa - nchar(10)
    )

INSERT INTO dbo.GIAOVIEN
(
    MaGiaoVien,
    HoTen,
    MaKhoa
)
VALUES
(   N'GV004', -- MaGiaoVien - nchar(10)
    N'Tran Ho Thuy Tien', -- HoTen - nvarchar(50)
    N'DUT3'  -- MaKhoa - nchar(10)
    )

INSERT INTO dbo.MONHOC
(
    MaMonHoc,
    TenMonHoc,
    SoTinChi
)
VALUES
(   N'MH001', -- MaMonHoc - nchar(10)
    N'Co ket cau', -- TenMonHoc - nvarchar(50)
    2   -- SoTinChi - int
    )

INSERT INTO dbo.MONHOC
(
    MaMonHoc,
    TenMonHoc,
    SoTinChi
)
VALUES
(   N'MH002', -- MaMonHoc - nchar(10)
    N'Co so du lieu', -- TenMonHoc - nvarchar(50)
    4   -- SoTinChi - int
    )


INSERT INTO dbo.MONHOC
(
    MaMonHoc,
    TenMonHoc,
    SoTinChi
)
VALUES
(   N'MH003', -- MaMonHoc - nchar(10)
    N'Cau truc du lieu', -- TenMonHoc - nvarchar(50)
    3   -- SoTinChi - int
    )

INSERT INTO dbo.TKB
(
    SoThuTu,
    HocKy,
    MaGiaoVien,
    MaMonHoc,
    PhongHoc,
    Thu,
    TietBatDau,
    TietKetThuc
)
VALUES
(   1,   -- SoThuTu - int
    1,   -- HocKy - int
    N'GV001', -- MaGiaoVien - nchar(10)
    N'MH002', -- MaMonHoc - nchar(10)
    N'E306', -- PhongHoc - nchar(5)
    N'Thu 6', -- Thu - nchar(10)
    8,   -- TietBatDau - int
    10    -- TietKetThuc - int
    )

INSERT INTO dbo.TKB
(
    SoThuTu,
    HocKy,
    MaGiaoVien,
    MaMonHoc,
    PhongHoc,
    Thu,
    TietBatDau,
    TietKetThuc
)
VALUES
(   1,   -- SoThuTu - int
    2,   -- HocKy - int
    N'GV001', -- MaGiaoVien - nchar(10)
    N'MH002', -- MaMonHoc - nchar(10)
    N'E306', -- PhongHoc - nchar(5)
    N'Thu 6', -- Thu - nchar(10)
    8,   -- TietBatDau - int
    10    -- TietKetThuc - int
    )

INSERT INTO dbo.TKB
(
    SoThuTu,
    HocKy,
    MaGiaoVien,
    MaMonHoc,
    PhongHoc,
    Thu,
    TietBatDau,
    TietKetThuc
)
VALUES
(   1,   -- SoThuTu - int
    2,   -- HocKy - int
    N'GV001', -- MaGiaoVien - nchar(10)
    N'MH003', -- MaMonHoc - nchar(10)
    N'E105', -- PhongHoc - nchar(5)
    N'Thu 5', -- Thu - nchar(10)
    1,   -- TietBatDau - int
    4    -- TietKetThuc - int
    )

INSERT INTO dbo.TKB
(
    SoThuTu,
    HocKy,
    MaGiaoVien,
    MaMonHoc,
    PhongHoc,
    Thu,
    TietBatDau,
    TietKetThuc
)
VALUES
(   2,   -- SoThuTu - int
    1,   -- HocKy - int
    N'GV002', -- MaGiaoVien - nchar(10)
    N'MH001', -- MaMonHoc - nchar(10)
    N'F202', -- PhongHoc - nchar(5)
    N'Thu 2', -- Thu - nchar(10)
    3,   -- TietBatDau - int
    5    -- TietKetThuc - int
    )

INSERT INTO dbo.TKB
(
    SoThuTu,
    HocKy,
    MaGiaoVien,
    MaMonHoc,
    PhongHoc,
    Thu,
    TietBatDau,
    TietKetThuc
)
VALUES
(   3,   -- SoThuTu - int
    3,   -- HocKy - int
    N'GV003', -- MaGiaoVien - nchar(10)
    N'MH001', -- MaMonHoc - nchar(10)
    N'F301', -- PhongHoc - nchar(5)
    N'Thu 2', -- Thu - nchar(10)
    3,   -- TietBatDau - int
    5    -- TietKetThuc - int
    )

------------------------------------------------------------
--Câu 2:
--a) 
SELECT  GV. HoTen, TKB1. Thu, TKB1. TietBatDau, TKB1. TietKetThuc, TKB1. PhongHoc
FROM dbo.GIAOVIEN AS GV INNER JOIN dbo.TKB AS TKB1
ON TKB1.MaGiaoVien = GV.MaGiaoVien
WHERE TKB1.HocKy='1'
--b)

SELECT  gv. MaGiaoVien,GV.HoTen,GV.MaKhoa FROM dbo.MONHOC AS MH INNER JOIN dbo.TKB AS TKB1
ON TKB1.MaMonHoc = MH.MaMonHoc
INNER JOIN dbo.GIAOVIEN AS GV
ON GV.MaGiaoVien = TKB1.MaGiaoVien
INNER JOIN dbo.KHOA AS K
ON K.MaKhoa = GV.MaKhoa
WHERE K.TenKhoa='Cong Nghe Thong Tin'
AND TKB1.HocKy='2' 
AND MH.TenMonHoc='Co so du lieu' 

INTERSECT

(
	SELECT  gv. MaGiaoVien,GV.HoTen,GV.MaKhoa  MaGiaoVien FROM dbo.MONHOC AS MH INNER JOIN dbo.TKB AS TKB1
	ON TKB1.MaMonHoc = MH.MaMonHoc
	INNER JOIN dbo.GIAOVIEN AS GV
	ON GV.MaGiaoVien = TKB1.MaGiaoVien
	INNER JOIN dbo.KHOA AS K
	ON K.MaKhoa = GV.MaKhoa
	WHERE K.TenKhoa='Cong Nghe Thong Tin'
	AND TKB1.HocKy='2' 
	AND MH.TenMonHoc='Cau truc du lieu' 
)

--c)
SELECT  MH. TenMonHoc FROM dbo.MONHOC AS MH INNER JOIN dbo.TKB AS TKB1 
ON TKB1.MaMonHoc = MH.MaMonHoc
INNER JOIN dbo.GIAOVIEN AS GV
ON GV.MaGiaoVien = TKB1.MaGiaoVien
INNER JOIN dbo.KHOA AS K
ON K.MaKhoa = GV.MaKhoa
WHERE K.TenKhoa = 'Dien'

--d)
SELECT  GV. HoTen FROM dbo.GIAOVIEN AS GV INNER JOIN dbo.TKB AS TKB1
ON TKB1.MaGiaoVien = GV.MaGiaoVien
WHERE TKB1.Thu ='Thu 5'

--e)
SELECT   K. TenKhoa,GV. HoTen, MH. TenMonHoc, TKB1. Thu, TKB1. TietBatDau
FROM dbo.MONHOC AS MH INNER JOIN dbo.TKB AS TKB1
ON TKB1.MaMonHoc = MH.MaMonHoc
INNER JOIN dbo.GIAOVIEN AS GV
ON GV.MaGiaoVien = TKB1.MaGiaoVien 
INNER JOIN dbo.KHOA AS K
ON K.MaKhoa = GV.MaKhoa
WHERE K.TenKhoa='Xay dung' AND 
MH.TenMonHoc='Co ket cau' AND 
TKB1.Thu='Thu 3'
AND TKB1.TietBatDau='1'