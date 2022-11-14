CREATE DATABASE BaiThucHanhso4
GO

USE BaiThucHanhso4
CREATE TABLE LOAITHUTUC
(
	MaLoaiTT NCHAR(5),
	TenLoaiTT NVARCHAR(15),
	ThoiHanTraKetQuaToiDa INT,
	MucPhi FLOAT,
	PRIMARY KEY( MaLoaiTT)
)
--------------------------------------------
CREATE TABLE CONGDAN
(
	MaCD NCHAR(5),
	HoTenCD NVARCHAR(15),
	DiaChi NVARCHAR(30),
	ToDanPho NVARCHAR(5),
	GioiTinh BIT,
	HoTenChuHo NVARCHAR(15),
	QuanHeVoiChuHo NVARCHAR(8),
	PRIMARY KEY(MaCD)
)
--------------------------------------------
CREATE TABLE CANBOTIEPNHAN
(
	MaCBTN NCHAR(5),
	HoTenCBTN NVARCHAR(10),
	ChucVu NVARCHAR(15),
	PRIMARY KEY( MaCBTN)
)
--------------------------------------------
CREATE TABLE GIAYTOCANBOSUNG
(
	MaYeuCau NCHAR(7),
	TenGiayToCanBoSung NVARCHAR(30),
	MoTaGiayToCanBoSung NVARCHAR(30),
	ThoiHanCuoiCungDeBoSung DATETIME,
	TinhTrangBoSung NVARCHAR(30)
	PRIMARY KEY(MaYeuCau, TenGiayToCanBoSung)
)
--------------------------------------------
CREATE TABLE YEUCAUTHUTUC
(
	MaYeuCau NCHAR(7),
	MaCD NCHAR(5),
	NoiDungYeuCau NVARCHAR(20),
	MaLoaiTT NCHAR(5),
	ThoiDiemTaoYeuCau DATETIME,
	ThoiDiemHenTraKetQua DATETIME,
	MaCBTN NCHAR(5),
	TrangThai NVARCHAR(30),
	PRIMARY KEY(MaYeuCau)
)
----------------------------------------------

CREATE TABLE  GIAYTOKEMTHEO
(
	MaYeuCau NCHAR(7),
	TenGiayToKemTheo NVARCHAR(30),
	MoTaGiayToKemTheo NVARCHAR(30),
	ThoiDiemNhanGTKT DATETIME,
	PRIMARY KEY(MaYeuCau, TenGiayToKemTheo)
)

-------------------------------------------------

ALTER TABLE dbo.YEUCAUTHUTUC
ADD CONSTRAINT D1
FOREIGN KEY(MaCD)
REFERENCES dbo.CONGDAN(MaCD)

ALTER TABLE dbo.YEUCAUTHUTUC
ADD CONSTRAINT D2
FOREIGN KEY(MaLoaiTT)
REFERENCES dbo.LOAITHUTUC(MaLoaiTT)

ALTER TABLE dbo.YEUCAUTHUTUC
ADD CONSTRAINT D3
FOREIGN KEY(MaCBTN)
REFERENCES dbo.CANBOTIEPNHAN(MaCBTN)

ALTER TABLE dbo.GIAYTOCANBOSUNG
ADD CONSTRAINT D4
FOREIGN KEY(MaYeuCau)
REFERENCES dbo.YEUCAUTHUTUC(MaYeuCau)

ALTER TABLE dbo.GIAYTOKEMTHEO
ADD CONSTRAINT D5
FOREIGN KEY(MaYeuCau)
REFERENCES dbo.YEUCAUTHUTUC(MaYeuCau)

-------------------------------------------------------------------
INSERT INTO dbo.CONGDAN
(
    MaCD,
    HoTenCD,
    DiaChi,
    ToDanPho,
    GioiTinh,
    HoTenChuHo,
    QuanHeVoiChuHo
)
VALUES
(   N'CD001',  -- MaCD - nchar(5)
    N'Tran A1',  -- HoTenCD - nvarchar(15)
    N'10 Nguyen Du',  -- DiaChi - nvarchar(30)
    N'To 1',  -- ToDanPho - nvarchar(5)
    1, -- GioiTinh - bit
    N'Nguyen Van1',  -- HoTenChuHo - nvarchar(15)
    N'Ban than'   -- QuanHeVoiChuHo - nvarchar(8)
    )

INSERT INTO dbo.CONGDAN
(
    MaCD,
    HoTenCD,
    DiaChi,
    ToDanPho,
    GioiTinh,
    HoTenChuHo,
    QuanHeVoiChuHo
)
VALUES
(   N'CD002',  -- MaCD - nchar(5)
    N'Tran A2',  -- HoTenCD - nvarchar(15)
    N'11 Nguyen Du',  -- DiaChi - nvarchar(30)
    N'To 2',  -- ToDanPho - nvarchar(5)
    0, -- GioiTinh - bit
    N'Nguyen Van2',  -- HoTenChuHo - nvarchar(15)
    N'Chong'   -- QuanHeVoiChuHo - nvarchar(8)
    )

INSERT INTO dbo.CONGDAN
(
    MaCD,
    HoTenCD,
    DiaChi,
    ToDanPho,
    GioiTinh,
    HoTenChuHo,
    QuanHeVoiChuHo
)
VALUES
(   N'CD003',  -- MaCD - nchar(5)
    N'Tran A3',  -- HoTenCD - nvarchar(15)
    N'12 Nguyen Du',  -- DiaChi - nvarchar(30)
    N'To 3',  -- ToDanPho - nvarchar(5)
    1, -- GioiTinh - bit
    N'Nguyen Van3',  -- HoTenChuHo - nvarchar(15)
    N'Vo'   -- QuanHeVoiChuHo - nvarchar(8)
    )


-------------------------------------------------------------------------------------
INSERT INTO dbo.LOAITHUTUC
(
    MaLoaiTT,
    TenLoaiTT,
    ThoiHanTraKetQuaToiDa,
    MucPhi
)
VALUES
(   N'TT001', -- MaLoaiTT - nchar(5)
    N'Dang ki ket hon', -- TenLoaiTT - nvarchar(15)
    2,   -- ThoiHanTraKetQuaToiDa - int
    15000  -- MucPhi - float
    )

INSERT INTO dbo.LOAITHUTUC
(
    MaLoaiTT,
    TenLoaiTT,
    ThoiHanTraKetQuaToiDa,
    MucPhi
)
VALUES
(   N'TT002', -- MaLoaiTT - nchar(5)
    N'Khai sinh', -- TenLoaiTT - nvarchar(15)
    7,   -- ThoiHanTraKetQuaToiDa - int
    20000  -- MucPhi - float
    )

------------------------------------------------------------
INSERT INTO dbo.CANBOTIEPNHAN
(
    MaCBTN,
    HoTenCBTN,
    ChucVu
)
VALUES
(   N'CB001', -- MaCBTN - nchar(5)
    N'CBTN001', -- HoTenCBTN - nvarchar(10)
    N'Nhanvienthoivu'  -- ChucVu - nvarchar(15)
    )

INSERT INTO dbo.CANBOTIEPNHAN
(
    MaCBTN,
    HoTenCBTN,
    ChucVu
)
VALUES
(   N'CB002', -- MaCBTN - nchar(5)
    N'CBTN002', -- HoTenCBTN - nvarchar(10)
    N'Can bo ho tich'  -- ChucVu - nvarchar(15)
    )

----------------------------------------------------
INSERT INTO dbo.YEUCAUTHUTUC
(
    MaYeuCau,
    MaCD,
    NoiDungYeuCau,
    MaLoaiTT,
    ThoiDiemTaoYeuCau,
    ThoiDiemHenTraKetQua,
    MaCBTN,
    TrangThai
)
VALUES
(   N'YC00001',       -- MaYeuCau - nchar(7)
    N'CD001',       -- MaCD - nchar(5)
    N'Khai sinh cho con',       -- NoiDungYeuCau - nvarchar(20)
    N'TT002',       -- MaLoaiTT - nchar(5)
    DATETIMEFROMPARTS(2019,02,15,7,50,05,02), -- ThoiDiemTaoYeuCau - datetime
    DATETIMEFROMPARTS(2019,02,25,13,00,50,02), -- ThoiDiemHenTraKetQua - datetime
    N'CB001',       -- MaCBTN - nchar(5)
    N'Da tiep nhan xu ly'        -- TrangThai - nvarchar(30)
    )

INSERT INTO dbo.YEUCAUTHUTUC
(
    MaYeuCau,
    MaCD,
    NoiDungYeuCau,
    MaLoaiTT,
    ThoiDiemTaoYeuCau,
    ThoiDiemHenTraKetQua,
    MaCBTN,
    TrangThai
)
VALUES
(   N'YC00002',       -- MaYeuCau - nchar(7)
    N'CD002',       -- MaCD - nchar(5)
    N'Khai tu cho me',       -- NoiDungYeuCau - nvarchar(20)
    N'TT001',       -- MaLoaiTT - nchar(5)
    DATETIMEFROMPARTS(2019,02,15,7,10,05,02), -- ThoiDiemTaoYeuCau - datetime
    NULL, -- ThoiDiemHenTraKetQua - datetime
    N'CB002',       -- MaCBTN - nchar(5)
    N'Cong dan moi dang ky'        -- TrangThai - nvarchar(30)
    )

--------------------------------------------------------------------------------
INSERT INTO dbo.GIAYTOCANBOSUNG
(
    MaYeuCau,
    TenGiayToCanBoSung,
    MoTaGiayToCanBoSung,
    ThoiHanCuoiCungDeBoSung,
    TinhTrangBoSung
)
VALUES
(   N'YC00002',       -- MaYeuCau - nchar(7)
    N'Chung minh nhan dan',       -- TenGiayToCanBoSung - nvarchar(30)
    N'Ban sao CMND',       -- MoTaGiayToCanBoSung - nvarchar(30)
    DATETIMEFROMPARTS(2019,02,15,7,50,35,02), -- ThoiHanCuoiCungDeBoSung - datetime
    N'Dang yeu cau bo sung'        -- TinhTrangBoSung - nvarchar(30)
    )

INSERT INTO dbo.GIAYTOCANBOSUNG
(
    MaYeuCau,
    TenGiayToCanBoSung,
    MoTaGiayToCanBoSung,
    ThoiHanCuoiCungDeBoSung,
    TinhTrangBoSung
)
VALUES
(   N'YC00002',       -- MaYeuCau - nchar(7)
    N'Giay khai sinh',       -- TenGiayToCanBoSung - nvarchar(30)
    N'Giay khai sinh nguoi khai',       -- MoTaGiayToCanBoSung - nvarchar(30)
    DATETIMEFROMPARTS(2019,03,15,7,50,35,02), -- ThoiHanCuoiCungDeBoSung - datetime
    N'Da duoc bo sung'        -- TinhTrangBoSung - nvarchar(30)
    )

	------------------------------------------------------------
INSERT INTO dbo.GIAYTOKEMTHEO
(
    MaYeuCau,
    TenGiayToKemTheo,
    MoTaGiayToKemTheo,
    ThoiDiemNhanGTKT
)
VALUES
(   N'YC00001',      -- MaYeuCau - nchar(7)
    N'Giay dang ki ket hon',      -- TenGiayToKemTheo - nvarchar(30)
    N'Giaydangkikethoncuachame',      -- MoTaGiayToKemTheo - nvarchar(30)
    DATETIMEFROMPARTS(2019,02,15,7,50,35,02) -- ThoiDiemNhanGTKT - datetime
    )

INSERT INTO dbo.GIAYTOKEMTHEO
(
    MaYeuCau,
    TenGiayToKemTheo,
    MoTaGiayToKemTheo,
    ThoiDiemNhanGTKT
)
VALUES
(   N'YC00001',      -- MaYeuCau - nchar(7)
    N'Ho khau',      -- TenGiayToKemTheo - nvarchar(30)
    N'Ho khau thuong tru',      -- MoTaGiayToKemTheo - nvarchar(30)
    DATETIMEFROMPARTS(2019,02,15,7,50,35,02) -- ThoiDiemNhanGTKT - datetime
    )

-------------------------------------------------------------------------------
--Câu 1:Xoá những công dân ở tổ dân phố 3

DELETE FROM dbo.CONGDAN WHERE ToDanPho = 'To 3'

--Câu 2:Cập nhật những loại thủ tục có thời hạn trả kết quả tối đa 2 ngày thành 5 ngày 

UPDATE dbo.LOAITHUTUC SET ThoiHanTraKetQuaToiDa = '5'
WHERE ThoiHanTraKetQuaToiDa = '2'

--Câu 3: Liệt kê những công dân có họ tên bắt đàu bằng ký tự'Ng', kết thúc bằng ký tự 'g' và có độ dài tối đa là 50 ký tự (kể cả kí tự trắng)

SELECT *FROM dbo.CONGDAN 
WHERE HoTenCD LIKE 'Tr%' AND HoTenCD LIKE '%1' AND LEN(HoTenCD) <=50

--Câu 4: Liệt kê những yêu cầu có thời điểm tạo nằm trong năm 2016 hoặc năm 2019
SELECT *FROM dbo.YEUCAUTHUTUC
WHERE YEAR(ThoiDiemTaoYeuCau) =2016 OR YEAR(ThoiDiemTaoYeuCau) = 2019

--Câu 5:

SELECT  MaYeuCau, MaCD, NoiDungYeuCau, ThoiDiemTaoYeuCau, ThoiDiemHenTraKetQua, TrangThai 
FROM dbo.YEUCAUTHUTUC
WHERE TrangThai = 'Da tiep nhan xu ly'
ORDER BY MaCD ASC, ThoiDiemHenTraKetQua DESC

--Câu 6:

SELECT *FROM dbo.CANBOTIEPNHAN
WHERE ChucVu = 'Can bo ho tich'
AND MaCBTN NOT IN
(
	SELECT  MaCBTN FROM dbo.YEUCAUTHUTUC
)

--Câu 7:
SELECT DISTINCT  HoTenCD FROM dbo.CONGDAN

SELECT  HoTenCD FROM dbo.CONGDAN 
GROUP BY HoTenCD

--Câu 8:
SELECT  CD.*, YCTT. MaYeuCau, YCTT. NoiDungYeuCau, YCTT. TrangThai 
FROM dbo.CONGDAN AS CD LEFT JOIN dbo.YEUCAUTHUTUC AS YCTT
ON YCTT.MaCD = CD.MaCD

--Câu 9: BTHS3	

SELECT  CD. HoTenChuHo FROM dbo.CONGDAN AS CD INNER JOIN dbo.YEUCAUTHUTUC AS YCTT
ON YCTT.MaCD = CD.MaCD
WHERE YCTT.ThoiDiemTaoYeuCau BETWEEN 01/01/2019 AND 30/06/2019
GROUP BY CD.HoTenChuHo
HAVING COUNT(YCTT.MaCD) >= 10


--Câu 10:bths3
SELECT  CD.* FROM dbo.CONGDAN AS CD INNER JOIN dbo.YEUCAUTHUTUC AS YCTT
ON YCTT.MaCD = CD.MaCD 
INNER JOIN dbo.LOAITHUTUC AS LTT
ON LTT.MaLoaiTT = YCTT.MaLoaiTT
WHERE LTT.TenLoaiTT ='Chung nhan doc than' AND YCTT.ThoiDiemTaoYeuCau BETWEEN 01/10/2019  AND 30/10/2019
EXCEPT
(
	SELECT  CD.* FROM dbo.CONGDAN AS CD INNER JOIN dbo.YEUCAUTHUTUC AS YCTT
	ON YCTT.MaCD = CD.MaCD 
	INNER JOIN dbo.LOAITHUTUC AS LTT
	ON LTT.MaLoaiTT = YCTT.MaLoaiTT
	WHERE LTT.TenLoaiTT ='Dang ky ket hon' AND YCTT.ThoiDiemTaoYeuCau BETWEEN 01/10/2019  AND 30/10/2019
)
