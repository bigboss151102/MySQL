CREATE DATABASE BaiThucHanhSo1

USE BaiThucHanhSo1

CREATE TABLE LOAIMATHANG
(
	MaLoaiMatHang NCHAR(10),
	TenLoaiMatHang NVARCHAR(50),
	PRIMARY KEY(MaLoaiMatHang)
)

CREATE TABLE KHOANGTHOIGIAN
(
	MaKhoangThoiGian NCHAR(10),
	MoTa NVARCHAR(50)
	PRIMARY KEY(MaKhoangThoiGian)
)


CREATE TABLE KHUVUC
(
	MaKhuVuc NCHAR(10),
	TenKhuVuc NVARCHAR(50),
	PRIMARY KEY(MaKhuVuc)
)

CREATE TABLE DANGKYGIAOHANG
(
	MaThanhVienGiaoHang NCHAR(10),
	MaKhoangThoiGianDKGiaoHang NCHAR(10)
)

CREATE TABLE THANHVIENGIAOHANG
(
	MaThanhVienGiaoHang NCHAR(10),
	TenThanhVienGiaoHang NVARCHAR(50),
	NgaySinh DATE,
	GioiTinh BIT,
	SoDTThanhVien CHAR(15),
	DiaChiThanhVien NVARCHAR(50),
	PRIMARY KEY(MaThanhVienGiaoHang)
)


CREATE TABLE KHACHHANG
(
	MaKhachHang NCHAR(10),
	MaKhuVuc NCHAR(10),
	TenKhachHang NVARCHAR(50),
	TenCuaHang NVARCHAR(50),
	SoDTKhachHang CHAR(15),
	DiaChiEmail NCHAR(50),
	DiaChiNhanHang NVARCHAR(50),
	PRIMARY KEY(MaKhachHang)
)

CREATE TABLE DICHVU
(
	MaDichVu NCHAR(10),
	TenDichVu NVARCHAR(50),
	PRIMARY KEY(MaDichVu)
)

CREATE TABLE DONHANG_GIAOHANG
(
	MaDonHangGiaoHang NCHAR(10),
	MaKhachHang NCHAR(10),
	MaThanhVienGiaoHang NCHAR(10),
	MaDichVu NCHAR(10),
	MaKhuVucGiaoHang NCHAR(10),
	TenNguoiNhan NVARCHAR(50),
	DiaChiGiaoHang NVARCHAR(50),
	SoDTNguoiNhan CHAR(15),
	MaKhoangThoiGianGiaoHang NCHAR(10),
	NgayGiaoHang DATE,
	PhuongThucThanhToan NVARCHAR(50),
	TrangThaiPheDuyet NVARCHAR(50),
	TrangThaiGiaoHang NVARCHAR(50),
	PRIMARY KEY(MaDonHangGiaoHang)
)


CREATE TABLE CHITIET_DONHANG
(
	MaDonHangGiaoHang NCHAR(10),
	TenSanPhamDuocGiao NVARCHAR(50),
	SoLuong INT,
	TrongLuong FLOAT,
	MaLoaiMatHang NCHAR(10),
	TienThuHo FLOAT,
	PRIMARY KEY(MaDonHangGiaoHang,TenSanPhamDuocGiao)
)

ALTER TABLE dbo.CHITIET_DONHANG ADD CONSTRAINT T1 FOREIGN KEY(MaLoaiMatHang) REFERENCES dbo.LOAIMATHANG(MaLoaiMatHang)

ALTER TABLE dbo.CHITIET_DONHANG ADD CONSTRAINT T2 FOREIGN KEY(MaDonHangGiaoHang) REFERENCES dbo.DONHANG_GIAOHANG(MaDonHangGiaoHang)

ALTER TABLE dbo.KHACHHANG ADD CONSTRAINT T3 FOREIGN KEY(MaKhuVuc) REFERENCES dbo.KHUVUC(MaKhuVuc)

ALTER TABLE dbo.DANGKYGIAOHANG ADD CONSTRAINT T4 FOREIGN KEY(MaThanhVienGiaoHang) REFERENCES dbo.THANHVIENGIAOHANG(MaThanhVienGiaoHang)

ALTER TABLE dbo.DANGKYGIAOHANG ADD CONSTRAINT T5 FOREIGN KEY(MaKhoangThoiGianDKGiaoHang) REFERENCES dbo.KHOANGTHOIGIAN(MaKhoangThoiGian)

ALTER TABLE dbo.DONHANG_GIAOHANG ADD CONSTRAINT T6 FOREIGN KEY(MaKhachHang) REFERENCES dbo.KHACHHANG(MaKhachHang)

ALTER TABLE dbo.DONHANG_GIAOHANG ADD CONSTRAINT T7 FOREIGN KEY(MaThanhVienGiaoHang) REFERENCES dbo.THANHVIENGIAOHANG(MaThanhVienGiaoHang)

ALTER TABLE dbo.DONHANG_GIAOHANG ADD CONSTRAINT T8 FOREIGN KEY(MaDichVu) REFERENCES dbo.DICHVU(MaDichVu)

ALTER TABLE dbo.DONHANG_GIAOHANG ADD CONSTRAINT T9 FOREIGN KEY(MaKhuVucGiaoHang) REFERENCES dbo.KHUVUC(MaKhuVuc)

ALTER TABLE dbo.DONHANG_GIAOHANG ADD CONSTRAINT T10 FOREIGN KEY(MaKhoangThoiGianGiaoHang) REFERENCES dbo.KHOANGTHOIGIAN(MaKhoangThoiGian)


INSERT INTO dbo.LOAIMATHANG
(
    MaLoaiMatHang,
    TenLoaiMatHang
)
VALUES
(   N'MH001', -- MaLoaiMatHang - nchar(10)
    N'Quan Ao'  -- TenLoaiMatHang - nvarchar(50)
    )

INSERT INTO dbo.LOAIMATHANG
(
    MaLoaiMatHang,
    TenLoaiMatHang
)
VALUES
(   N'MH002', -- MaLoaiMatHang - nchar(10)
    N'My Pham'  -- TenLoaiMatHang - nvarchar(50)
    )

INSERT INTO dbo.LOAIMATHANG
(
    MaLoaiMatHang,
    TenLoaiMatHang
)
VALUES
(   N'MH003', -- MaLoaiMatHang - nchar(10)
    N'Do Gia Dung'  -- TenLoaiMatHang - nvarchar(50)
    )

INSERT INTO dbo.LOAIMATHANG
(
    MaLoaiMatHang,
    TenLoaiMatHang
)
VALUES
(   N'MH004', -- MaLoaiMatHang - nchar(10)
    N'Do Dien Tu'  -- TenLoaiMatHang - nvarchar(50)
    )
---------------------------------------------------------------------------------
INSERT INTO dbo.KHUVUC
(
    MaKhuVuc,
    TenKhuVuc
)
VALUES
(   N'KV001', -- MaKhuVuc - nchar(10)
    N'Son Tra'  -- TenKhuVuc - nvarchar(50)
    )

INSERT INTO dbo.KHUVUC
(
    MaKhuVuc,
    TenKhuVuc
)
VALUES
(   N'KV002', -- MaKhuVuc - nchar(10)
    N'Lien Chieu'  -- TenKhuVuc - nvarchar(50)
    )

INSERT INTO dbo.KHUVUC
(
    MaKhuVuc,
    TenKhuVuc
)
VALUES
(   N'KV003', -- MaKhuVuc - nchar(10)
    N'Ngu Hanh Son'  -- TenKhuVuc - nvarchar(50)
    )

INSERT INTO dbo.KHUVUC
(
    MaKhuVuc,
    TenKhuVuc
)
VALUES
(   N'KV004', -- MaKhuVuc - nchar(10)
    N'Hai Chau'  -- TenKhuVuc - nvarchar(50)
    )

INSERT INTO dbo.KHUVUC
(
    MaKhuVuc,
    TenKhuVuc
)
VALUES
(   N'KV005', -- MaKhuVuc - nchar(10)
    N'Thanh Khe'  -- TenKhuVuc - nvarchar(50)
    )
---------------------------------------------------------------------------------

INSERT INTO dbo.KHOANGTHOIGIAN
(
    MaKhoangThoiGian,
    MoTa
)
VALUES
(   N'TG001', -- MaKhoangThoiGian - nchar(10)
    N'7H-9H AM'  -- MoTa - nvarchar(50)
    )

INSERT INTO dbo.KHOANGTHOIGIAN
(
    MaKhoangThoiGian,
    MoTa
)
VALUES
(   N'TG002', -- MaKhoangThoiGian - nchar(10)
    N'9H-11H AM'  -- MoTa - nvarchar(50)
    )


INSERT INTO dbo.KHOANGTHOIGIAN
(
    MaKhoangThoiGian,
    MoTa
)
VALUES
(   N'TG003', -- MaKhoangThoiGian - nchar(10)
    N'1H-3H PM'  -- MoTa - nvarchar(50)
    )


INSERT INTO dbo.KHOANGTHOIGIAN
(
    MaKhoangThoiGian,
    MoTa
)
VALUES
(   N'TG004', -- MaKhoangThoiGian - nchar(10)
    N'3H-5H PM'  -- MoTa - nvarchar(50)
    )


INSERT INTO dbo.KHOANGTHOIGIAN
(
    MaKhoangThoiGian,
    MoTa
)
VALUES
(   N'TG005', -- MaKhoangThoiGian - nchar(10)
    N'7H-9H30 PM'  -- MoTa - nvarchar(50)
    )
------------------------------------------------------------------------------------------
INSERT INTO dbo.DICHVU
(
    MaDichVu,
    TenDichVu
)
VALUES
(   N'DV001', -- MaDichVu - nchar(10)
    N'Giao hang nguoi nhan tra tien phi'  -- TenDichVu - nvarchar(50)
    )

INSERT INTO dbo.DICHVU
(
    MaDichVu,
    TenDichVu
)
VALUES
(   N'DV002', -- MaDichVu - nchar(10)
    N'Giao hang nguoi gui tra tien phi'  -- TenDichVu - nvarchar(50)
    )

INSERT INTO dbo.DICHVU
(
    MaDichVu,
    TenDichVu
)
VALUES
(   N'DV003', -- MaDichVu - nchar(10)
    N'Giao hang cong ich (khong tinh phi)'  -- TenDichVu - nvarchar(50)
    )

------------------------------------------------------------------------------------------

INSERT INTO dbo.THANHVIENGIAOHANG
(
    MaThanhVienGiaoHang,
    TenThanhVienGiaoHang,
    NgaySinh,
    GioiTinh,
    SoDTThanhVien,
    DiaChiThanhVien
)
VALUES
(   N'TV0001',       -- MaThanhVienGiaoHang - nchar(10)
    N'Nguyen Van A',       -- TenThanhVienGiaoHang - nvarchar(50)
    DATEFROMPARTS(1995,11,20), -- NgaySinh - date
    1,      -- GioiTinh - bit
    '0905111111',        -- SoDTThanhVien - char(15)
    N'23 Ong Ich Khiem'        -- DiaChiThanhVien - nvarchar(50)
    )

INSERT INTO dbo.THANHVIENGIAOHANG
(
    MaThanhVienGiaoHang,
    TenThanhVienGiaoHang,
    NgaySinh,
    GioiTinh,
    SoDTThanhVien,
    DiaChiThanhVien
)
VALUES
(   N'TV0002',       -- MaThanhVienGiaoHang - nchar(10)
    N'Nguyen Van B',       -- TenThanhVienGiaoHang - nvarchar(50)
    DATEFROMPARTS(1992,12,26), -- NgaySinh - date
    0,      -- GioiTinh - bit
    '0905111112',        -- SoDTThanhVien - char(15)
    N'234 Ton Duc Thang'        -- DiaChiThanhVien - nvarchar(50)
    )

INSERT INTO dbo.THANHVIENGIAOHANG
(
    MaThanhVienGiaoHang,
    TenThanhVienGiaoHang,
    NgaySinh,
    GioiTinh,
    SoDTThanhVien,
    DiaChiThanhVien
)
VALUES
(   N'TV0003',       -- MaThanhVienGiaoHang - nchar(10)
    N'Nguyen Van C',       -- TenThanhVienGiaoHang - nvarchar(50)
    DATEFROMPARTS(1990,11,30), -- NgaySinh - date
    0,      -- GioiTinh - bit
    '0905111113',        -- SoDTThanhVien - char(15)
    N'45 Hoang Dieu'        -- DiaChiThanhVien - nvarchar(50)
    )

INSERT INTO dbo.THANHVIENGIAOHANG
(
    MaThanhVienGiaoHang,
    TenThanhVienGiaoHang,
    NgaySinh,
    GioiTinh,
    SoDTThanhVien,
    DiaChiThanhVien
)
VALUES
(   N'TV0004',       -- MaThanhVienGiaoHang - nchar(10)
    N'Nguyen Van D',       -- TenThanhVienGiaoHang - nvarchar(50)
    DATEFROMPARTS(1995,07,08), -- NgaySinh - date
    1,      -- GioiTinh - bit
    '0905111114',        -- SoDTThanhVien - char(15)
    N'23/33 Ngu Hanh Son'        -- DiaChiThanhVien - nvarchar(50)
    )

INSERT INTO dbo.THANHVIENGIAOHANG
(
    MaThanhVienGiaoHang,
    TenThanhVienGiaoHang,
    NgaySinh,
    GioiTinh,
    SoDTThanhVien,
    DiaChiThanhVien
)
VALUES
(   N'TV0005',       -- MaThanhVienGiaoHang - nchar(10)
    N'Nguyen Van E',       -- TenThanhVienGiaoHang - nvarchar(50)
    DATEFROMPARTS(1991,02,04), -- NgaySinh - date
    1,      -- GioiTinh - bit
    '0905111115',        -- SoDTThanhVien - char(15)
    N'56 Dinh Thi Dieu'        -- DiaChiThanhVien - nvarchar(50)
    )

--------------------------------------------------------------------------------------------

INSERT INTO dbo.DANGKYGIAOHANG
(
    MaThanhVienGiaoHang,
    MaKhoangThoiGianDKGiaoHang
)
VALUES
(   N'TV0001', -- MaThanhVienGiaoHang - nchar(10)
    N'TG004'  -- MaKhoangThoiGianDKGiaoHang - nchar(10)
    )

INSERT INTO dbo.DANGKYGIAOHANG
(
    MaThanhVienGiaoHang,
    MaKhoangThoiGianDKGiaoHang
)
VALUES
(   N'TV0002', -- MaThanhVienGiaoHang - nchar(10)
    N'TG005'  -- MaKhoangThoiGianDKGiaoHang - nchar(10)
    )

INSERT INTO dbo.DANGKYGIAOHANG
(
    MaThanhVienGiaoHang,
    MaKhoangThoiGianDKGiaoHang
)
VALUES
(   N'TV0003', -- MaThanhVienGiaoHang - nchar(10)
    N'TG001'  -- MaKhoangThoiGianDKGiaoHang - nchar(10)
    )

INSERT INTO dbo.DANGKYGIAOHANG
(
    MaThanhVienGiaoHang,
    MaKhoangThoiGianDKGiaoHang
)
VALUES
(   N'TV0003', -- MaThanhVienGiaoHang - nchar(10)
    N'TG002'  -- MaKhoangThoiGianDKGiaoHang - nchar(10)
    )

INSERT INTO dbo.DANGKYGIAOHANG
(
    MaThanhVienGiaoHang,
    MaKhoangThoiGianDKGiaoHang
)
VALUES
(   N'TV0003', -- MaThanhVienGiaoHang - nchar(10)
    N'TG003'  -- MaKhoangThoiGianDKGiaoHang - nchar(10)
    )

-----------------------------------------------------------------------------------------

INSERT INTO dbo.KHACHHANG
(
    MaKhachHang,
    MaKhuVuc,
    TenKhachHang,
    TenCuaHang,
    SoDTKhachHang,
    DiaChiEmail,
    DiaChiNhanHang
)
VALUES
(   N'KH001', -- MaKhachHang - nchar(10)
    N'KV001', -- MaKhuVuc - nchar(10)
    N'Le Thi A', -- TenKhachHang - nvarchar(50)
    N'Cua hang 1', -- TenCuaHang - nvarchar(50)
    '0905111111',  -- SoDTKhachHang - char(15)
    N'alethi@gmail.com', -- DiaChiEmail - nchar(50)
    N'80 Pham Phu Thai'  -- DiaChiNhanHang - nvarchar(50)
    )

INSERT INTO dbo.KHACHHANG
(
    MaKhachHang,
    MaKhuVuc,
    TenKhachHang,
    TenCuaHang,
    SoDTKhachHang,
    DiaChiEmail,
    DiaChiNhanHang
)
VALUES
(   N'KH002', -- MaKhachHang - nchar(10)
    N'KV001', -- MaKhuVuc - nchar(10)
    N'Nguyen Van B', -- TenKhachHang - nvarchar(50)
    N'Cua hang 2', -- TenCuaHang - nvarchar(50)
    '0905111112',  -- SoDTKhachHang - char(15)
    N'bnguyenvan@gmail.com', -- DiaChiEmail - nchar(50)
    N'100 Phan Tu'  -- DiaChiNhanHang - nvarchar(50)
    )

INSERT INTO dbo.KHACHHANG
(
    MaKhachHang,
    MaKhuVuc,
    TenKhachHang,
    TenCuaHang,
    SoDTKhachHang,
    DiaChiEmail,
    DiaChiNhanHang
)
VALUES
(   N'KH003', -- MaKhachHang - nchar(10)
    N'KV002', -- MaKhuVuc - nchar(10)
    N'Le Thi B', -- TenKhachHang - nvarchar(50)
    N'Cua hang 3', -- TenCuaHang - nvarchar(50)
    '0905111113',  -- SoDTKhachHang - char(15)
    N'blethi@gmail.com', -- DiaChiEmail - nchar(50)
    N'23 An Thuong 18'  -- DiaChiNhanHang - nvarchar(50)
    )

INSERT INTO dbo.KHACHHANG
(
    MaKhachHang,
    MaKhuVuc,
    TenKhachHang,
    TenCuaHang,
    SoDTKhachHang,
    DiaChiEmail,
    DiaChiNhanHang
)
VALUES
(   N'KH004', -- MaKhachHang - nchar(10)
    N'KV002', -- MaKhuVuc - nchar(10)
    N'Nguyen Van C', -- TenKhachHang - nvarchar(50)
    N'Cua hang 4', -- TenCuaHang - nvarchar(50)
    '0905111114',  -- SoDTKhachHang - char(15)
    N'cnguyenvan@gmail.com', -- DiaChiEmail - nchar(50)
    N'60 Ngo The Thai'  -- DiaChiNhanHang - nvarchar(50)
    )


INSERT INTO dbo.KHACHHANG
(
    MaKhachHang,
    MaKhuVuc,
    TenKhachHang,
    TenCuaHang,
    SoDTKhachHang,
    DiaChiEmail,
    DiaChiNhanHang
)
VALUES
(   N'KH005', -- MaKhachHang - nchar(10)
    N'KV001', -- MaKhuVuc - nchar(10)
    N'Le Thi D', -- TenKhachHang - nvarchar(50)
    N'Cua hang 5', -- TenCuaHang - nvarchar(50)
    '0905111115',  -- SoDTKhachHang - char(15)
    N'dlethi@gmail.com', -- DiaChiEmail - nchar(50)
    N'100 Chau Thi Vinh Te'  -- DiaChiNhanHang - nvarchar(50)
    )

-----------------------------------------------------------------
INSERT INTO dbo.DONHANG_GIAOHANG
(
    MaDonHangGiaoHang,
    MaKhachHang,
    MaThanhVienGiaoHang,
    MaDichVu,
    MaKhuVucGiaoHang,
    TenNguoiNhan,
    DiaChiGiaoHang,
    SoDTNguoiNhan,
    MaKhoangThoiGianGiaoHang,
    NgayGiaoHang,
    PhuongThucThanhToan,
    TrangThaiPheDuyet,
    TrangThaiGiaoHang
)
VALUES
(   N'DH0001',       -- MaDonHangGiaoHang - nchar(10)
    N'KH001',       -- MaKhachHang - nchar(10)
    N'TV0001',       -- MaThanhVienGiaoHang - nchar(10)
    N'DV001',       -- MaDichVu - nchar(10)
    N'KV001',       -- MaKhuVucGiaoHang - nchar(10)
    N'Pham Van A',       -- TenNguoiNhan - nvarchar(50)
    N'30 Hoang Van Thu',       -- DiaChiGiaoHang - nvarchar(50)
    '0905111111',        -- SoDTNguoiNhan - char(15)
    N'TG004',       -- MaKhoangThoiGianGiaoHang - nchar(10)
    DATEFROMPARTS(2016,10,10), -- NgayGiaoHang - date
    N'Tien mat',       -- PhuongThucThanhToan - nvarchar(50)
    N'Da phe duyet',       -- TrangThaiPheDuyet - nvarchar(50)
    N'Da giao hang'        -- TrangThaiGiaoHang - nvarchar(50)
    )

INSERT INTO dbo.DONHANG_GIAOHANG
(
    MaDonHangGiaoHang,
    MaKhachHang,
    MaThanhVienGiaoHang,
    MaDichVu,
    MaKhuVucGiaoHang,
    TenNguoiNhan,
    DiaChiGiaoHang,
    SoDTNguoiNhan,
    MaKhoangThoiGianGiaoHang,
    NgayGiaoHang,
    PhuongThucThanhToan,
    TrangThaiPheDuyet,
    TrangThaiGiaoHang
)
VALUES
(   N'DH0002',       -- MaDonHangGiaoHang - nchar(10)
    N'KH001',       -- MaKhachHang - nchar(10)
    N'TV0002',       -- MaThanhVienGiaoHang - nchar(10)
    N'DV001',       -- MaDichVu - nchar(10)
    N'KV005',       -- MaKhuVucGiaoHang - nchar(10)
    N'Pham Van B',       -- TenNguoiNhan - nvarchar(50)
    N'15 Le Dinh Ly',       -- DiaChiGiaoHang - nvarchar(50)
    '0905111112',        -- SoDTNguoiNhan - char(15)
    N'TG005',       -- MaKhoangThoiGianGiaoHang - nchar(10)
    DATEFROMPARTS(2016,12,23), -- NgayGiaoHang - date
    N'Tien mat',       -- PhuongThucThanhToan - nvarchar(50)
    N'Da phe duyet',       -- TrangThaiPheDuyet - nvarchar(50)
    N'Chua giao hang'        -- TrangThaiGiaoHang - nvarchar(50)
    )

INSERT INTO dbo.DONHANG_GIAOHANG
(
    MaDonHangGiaoHang,
    MaKhachHang,
    MaThanhVienGiaoHang,
    MaDichVu,
    MaKhuVucGiaoHang,
    TenNguoiNhan,
    DiaChiGiaoHang,
    SoDTNguoiNhan,
    MaKhoangThoiGianGiaoHang,
    NgayGiaoHang,
    PhuongThucThanhToan,
    TrangThaiPheDuyet,
    TrangThaiGiaoHang
)
VALUES
(   N'DH0003',       -- MaDonHangGiaoHang - nchar(10)
    N'KH002',       -- MaKhachHang - nchar(10)
    N'TV0003',       -- MaThanhVienGiaoHang - nchar(10)
    N'DV001',       -- MaDichVu - nchar(10)
    N'KV005',       -- MaKhuVucGiaoHang - nchar(10)
    N'Pham Van C',       -- TenNguoiNhan - nvarchar(50)
    N'23 Le Dinh Duong',       -- DiaChiGiaoHang - nvarchar(50)
    '0905111113',        -- SoDTNguoiNhan - char(15)
    N'TG001',       -- MaKhoangThoiGianGiaoHang - nchar(10)
    DATEFROMPARTS(2017,8,4), -- NgayGiaoHang - date
    N'Tien mat',       -- PhuongThucThanhToan - nvarchar(50)
    N'Da phe duyet',       -- TrangThaiPheDuyet - nvarchar(50)
    N'Da giao hang'        -- TrangThaiGiaoHang - nvarchar(50)
    )

INSERT INTO dbo.DONHANG_GIAOHANG
(
    MaDonHangGiaoHang,
    MaKhachHang,
    MaThanhVienGiaoHang,
    MaDichVu,
    MaKhuVucGiaoHang,
    TenNguoiNhan,
    DiaChiGiaoHang,
    SoDTNguoiNhan,
    MaKhoangThoiGianGiaoHang,
    NgayGiaoHang,
    PhuongThucThanhToan,
    TrangThaiPheDuyet,
    TrangThaiGiaoHang
)
VALUES
(   N'DH0004',       -- MaDonHangGiaoHang - nchar(10)
    N'KH003',       -- MaKhachHang - nchar(10)
    N'TV0001',       -- MaThanhVienGiaoHang - nchar(10)
    N'DV003',       -- MaDichVu - nchar(10)
    N'KV002',       -- MaKhuVucGiaoHang - nchar(10)
    N'Pham Van D',       -- TenNguoiNhan - nvarchar(50)
    N'45 Pham Phu Thai',       -- DiaChiGiaoHang - nvarchar(50)
    '0905111114',        -- SoDTNguoiNhan - char(15)
    N'TG002',       -- MaKhoangThoiGianGiaoHang - nchar(10)
    DATEFROMPARTS(2015,11,10), -- NgayGiaoHang - date
    N'Chuyen khoang',       -- PhuongThucThanhToan - nvarchar(50)
    N'Da phe duyet',       -- TrangThaiPheDuyet - nvarchar(50)
    N'Da giao hang'        -- TrangThaiGiaoHang - nvarchar(50)
    )


INSERT INTO dbo.DONHANG_GIAOHANG
(
    MaDonHangGiaoHang,
    MaKhachHang,
    MaThanhVienGiaoHang,
    MaDichVu,
    MaKhuVucGiaoHang,
    TenNguoiNhan,
    DiaChiGiaoHang,
    SoDTNguoiNhan,
    MaKhoangThoiGianGiaoHang,
    NgayGiaoHang,
    PhuongThucThanhToan,
    TrangThaiPheDuyet,
    TrangThaiGiaoHang
)
VALUES
(   N'DH0005',       -- MaDonHangGiaoHang - nchar(10)
    N'KH003',       -- MaKhachHang - nchar(10)
    N'TV0005',       -- MaThanhVienGiaoHang - nchar(10)
    N'DV003',       -- MaDichVu - nchar(10)
    N'KV003',       -- MaKhuVucGiaoHang - nchar(10)
    N'Pham Van E',       -- TenNguoiNhan - nvarchar(50)
    N'78 Hoang Dieu',       -- DiaChiGiaoHang - nvarchar(50)
    '0905111115',        -- SoDTNguoiNhan - char(15)
    N'TG003',       -- MaKhoangThoiGianGiaoHang - nchar(10)
    DATEFROMPARTS(2017,04,04), -- NgayGiaoHang - date
    N'Chuyen khoang',       -- PhuongThucThanhToan - nvarchar(50)
    N'Chua phe duyet',       -- TrangThaiPheDuyet - nvarchar(50)
    N'NULL'        -- TrangThaiGiaoHang - nvarchar(50)
    )

-------------------------------------------------------------------------------------------------------

INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0001', -- MaDonHangGiaoHang - nchar(10)
    N'Ao len', -- TenSanPhamDuocGiao - nvarchar(50)
    2,   -- SoLuong - int
    0.5, -- TrongLuong - float
    N'MH001', -- MaLoaiMatHang - nchar(10)
    200000  -- TienThuHo - float
    )


INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0001', -- MaDonHangGiaoHang - nchar(10)
    N'Quan au', -- TenSanPhamDuocGiao - nvarchar(50)
    1,   -- SoLuong - int
    0.25, -- TrongLuong - float
    N'MH001', -- MaLoaiMatHang - nchar(10)
    350000 -- TienThuHo - float
    )


INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0002', -- MaDonHangGiaoHang - nchar(10)
    N'Ao thun', -- TenSanPhamDuocGiao - nvarchar(50)
    1,   -- SoLuong - int
    0.25, -- TrongLuong - float
    N'MH001', -- MaLoaiMatHang - nchar(10)
    1000000  -- TienThuHo - float
    )


INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0002', -- MaDonHangGiaoHang - nchar(10)
    N'Ao khoac', -- TenSanPhamDuocGiao - nvarchar(50)
    3,   -- SoLuong - int
    0.25, -- TrongLuong - float
    N'MH001', -- MaLoaiMatHang - nchar(10)
    2000000  -- TienThuHo - float
    )


INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0003', -- MaDonHangGiaoHang - nchar(10)
    N'Sua duong the', -- TenSanPhamDuocGiao - nvarchar(50)
    2,   -- SoLuong - int
    0.25, -- TrongLuong - float
    N'MH002', -- MaLoaiMatHang - nchar(10)
    780000  -- TienThuHo - float
    )


INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0003', -- MaDonHangGiaoHang - nchar(10)
    N'Kem tay da chet', -- TenSanPhamDuocGiao - nvarchar(50)
    3,   -- SoLuong - int
    0.5, -- TrongLuong - float
    N'MH002', -- MaLoaiMatHang - nchar(10)
    150000 -- TienThuHo - float
    )


INSERT INTO dbo.CHITIET_DONHANG
(
    MaDonHangGiaoHang,
    TenSanPhamDuocGiao,
    SoLuong,
    TrongLuong,
    MaLoaiMatHang,
    TienThuHo
)
VALUES
(   N'DH0003', -- MaDonHangGiaoHang - nchar(10)
    N'Kem duong ban dem', -- TenSanPhamDuocGiao - nvarchar(50)
    4,   -- SoLuong - int
    0.25, -- TrongLuong - float
    N'MH002', -- MaLoaiMatHang - nchar(10)
    900000  -- TienThuHo - float
    )

-----------------------------------------------------------------------------------------------------------------
--Câu 1:Xoá những khách hàng có tên là "Le Thi A"

DELETE FROM dbo.KHACHHANG WHERE TenKhachHang='Le Thi A'

--Câu 2:Cập nhật những khách hàng đang thường trú ở khu vực "Son Tra" thành khu vuc "Ngu Hanh Son"

UPDATE dbo.KHUVUC SET TenKhuVuc = 'Ngu Hanh Son' WHERE TenKhuVuc ='Son Tra'

--Câu 3: Cập nhật khách hàng có địa chỉ thành viên "100 Phan Tu" thành "62 Ngo Si Lien"

UPDATE dbo.KHACHHANG SET DiaChiNhanHang = '62 Ngo Si Lien' WHERE DiaChiNhanHang = '100 Chau Thi Vinh Te'

--Câu 4:Liệt kê những thành viên Shipper có họ tên bắt đầu là kí tự 'Tr' và có độ dài ít nhất là 25 kí tự (kể cả kí tự trắng)

SELECT *FROM dbo.THANHVIENGIAOHANG 
WHERE TenThanhVienGiaoHang LIKE 'Tr%'
AND LEN(TenThanhVienGiaoHang) >= 25

--Câu 5:

SELECT  DHGH.MaDonHangGiaoHang, DHGH.MaThanhVienGiaoHang, TVGH.TenThanhVienGiaoHang, DHGH.NgayGiaoHang, DHGH.PhuongThucThanhToan 
FROM dbo.DONHANG_GIAOHANG AS DHGH INNER JOIN  dbo.THANHVIENGIAOHANG AS TVGH
ON DHGH.MaThanhVienGiaoHang=TVGH.MaThanhVienGiaoHang
WHERE DHGH.TrangThaiGiaoHang = 'Da giao hang'
ORDER BY DHGH.NgayGiaoHang ASC, DHGH.PhuongThucThanhToan DESC

--Câu 6:

SELECT *FROM dbo.DONHANG_GIAOHANG AS DHGH INNER JOIN dbo.THANHVIENGIAOHANG AS TVGH
ON TVGH.MaThanhVienGiaoHang = DHGH.MaThanhVienGiaoHang
WHERE TVGH.GioiTinh = '1'
AND DHGH.TrangThaiGiaoHang = 'Chua giao hang'

SELECT *FROM dbo.THANHVIENGIAOHANG
WHERE GioiTinh = '1'
AND MaThanhVienGiaoHang NOT IN 
(
	SELECT  MaThanhVienGiaoHang FROM dbo.DONHANG_GIAOHANG
)
-- Câu 7
--Cách 1:

SELECT DISTINCT  TenKhachHang FROM dbo.KHACHHANG

--Cách 2:

SELECT  TenKhachHang FROM dbo.KHACHHANG 
GROUP BY TenKhachHang

--Câu 8:

SELECT  KH. MaKhachHang, KH. TenKhachHang, KH.DiaChiNhanHang, DHGH.MaDonHangGiaoHang, DHGH.PhuongThucThanhToan, DHGH.TrangThaiGiaoHang
FROM dbo.DONHANG_GIAOHANG AS DHGH INNER JOIN dbo.KHACHHANG AS KH 
ON DHGH.MaKhachHang = KH.MaKhachHang


SELECT  KH. MaKhachHang, KH. TenKhachHang, KH.DiaChiNhanHang, DHGH.MaDonHangGiaoHang, DHGH.PhuongThucThanhToan, DHGH.TrangThaiGiaoHang
FROM dbo.DONHANG_GIAOHANG AS DHGH LEFT JOIN dbo.KHACHHANG AS KH 
ON DHGH.MaKhachHang = KH.MaKhachHang

SELECT  KH. MaKhachHang, KH. TenKhachHang, KH.DiaChiNhanHang, DHGH.MaDonHangGiaoHang, DHGH.PhuongThucThanhToan, DHGH.TrangThaiGiaoHang
FROM dbo.KHACHHANG AS KH LEFT JOIN dbo.DONHANG_GIAOHANG AS DHGH   
ON DHGH.MaKhachHang = KH.MaKhachHang



--Câu 9: Bài thực hành 01

SELECT  TVGH. MaThanhVienGiaoHang, TVGH.TenThanhVienGiaoHang,TVGH.GioiTinh 
FROM dbo.THANHVIENGIAOHANG AS TVGH INNER JOIN dbo.DONHANG_GIAOHANG AS DHGH
ON TVGH.MaThanhVienGiaoHang=DHGH.MaThanhVienGiaoHang
INNER JOIN dbo.KHUVUC AS KV ON KV.MaKhuVuc = DHGH.MaKhuVucGiaoHang 
WHERE TVGH.GioiTinh ='0' 
AND KV.TenKhuVuc = 'Hai Chau'
GROUP BY TVGH.MaThanhVienGiaoHang, TVGH.TenThanhVienGiaoHang, TVGH.GioiTinh
HAVING COUNT(DHGH.MaKhachHang) = 10

--Câu 10:Bài thực hành 01

SELECT KH.* FROM dbo.KHACHHANG AS KH INNER JOIN dbo.DONHANG_GIAOHANG AS DHGH
ON DHGH.MaKhachHang = KH.MaKhachHang
INNER JOIN dbo.KHUVUC AS KV
ON KV.MaKhuVuc = DHGH.MaKhuVucGiaoHang
WHERE KV.TenKhuVuc = 'Lien Chieu'
EXCEPT
(
	SELECT KH.* FROM dbo.KHACHHANG AS KH INNER JOIN dbo.DONHANG_GIAOHANG AS DHGH
	ON DHGH.MaKhachHang = KH.MaKhachHang
	INNER JOIN dbo.THANHVIENGIAOHANG AS TVGH
	ON TVGH.MaThanhVienGiaoHang = DHGH.MaThanhVienGiaoHang
	WHERE TVGH.GioiTinh = '1'
)

SELECT  DHGH.* FROM dbo.DONHANG_GIAOHANG AS DHGH INNER JOIN dbo.KHUVUC AS KV
ON KV.MaKhuVuc = DHGH.MaKhuVucGiaoHang
WHERE YEAR( DHGH.NgayGiaoHang) = 2017
AND KV.TenKhuVuc ='Ngu Hanh Son'