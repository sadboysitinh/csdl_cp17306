CREATE DATABASE QuanLyCuaHang
USE QuanLyCuaHang

CREATE TABLE CuaHang(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) UNIQUE,
	Ten NVARCHAR(50) DEFAULT NULL,
	DiaChi NVARCHAR(100) DEFAULT NULL,
	ThanhPho NVARCHAR(30) DEFAULT NULL,
	QuocGia NVARCHAR(50) DEFAULT NULL
)

CREATE TABLE DongSP(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(50) DEFAULT NULL,
	Web VARCHAR(100) DEFAULT NULL,
)

CREATE TABLE ChucVu(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(50) DEFAULT NULL
)

CREATE TABLE NhanVien(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(20) DEFAULT NULL,
	TenDem NVARCHAR(20) DEFAULT NULL,
	Ho NVARCHAR(20) DEFAULT NULL,
	GioiTinh VARCHAR(10) DEFAULT NULL,
	NgaySinh DATE DEFAULT NULL,
	DiaChi NVARCHAR(100) DEFAULT NULL,
	Sdt VARCHAR(10) DEFAULT NULL,
	IdCuaHang INT FOREIGN KEY REFERENCES CuaHang(Id),
	IdChucVu INT FOREIGN KEY REFERENCES ChucVu(Id),
	IdGuiBaoCao INT FOREIGN KEY REFERENCES NhanVien(Id),
	TrangThai INT DEFAULT 0
)

CREATE TABLE KhachHang(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(20) DEFAULT NULL,
	TenDem NVARCHAR(20) DEFAULT NULL,
	Ho NVARCHAR(20) DEFAULT NULL,
	NgaySinh DATE DEFAULT NULL,
	DiaChi NVARCHAR(100) DEFAULT NULL,
	Sdt VARCHAR(10) DEFAULT NULL,
	ThanhPho NVARCHAR(30) DEFAULT NULL,
	QuocGia NVARCHAR(50) DEFAULT NULL
)

CREATE TABLE Nsx(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(50) DEFAULT NULL
)

CREATE TABLE SanPham(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(50) DEFAULT NULL
)

CREATE TABLE MauSac(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	Ten NVARCHAR(50) DEFAULT NULL
)

CREATE TABLE ChiTietSanPham(
	Id INT PRIMARY KEY IDENTITY,
	IdSP INT FOREIGN KEY REFERENCES SanPham(Id),
	Ten NVARCHAR(50) DEFAULT NULL,
	NamBaoHanh DATE DEFAULT NULL,
	MoTa NVARCHAR(150) DEFAULT NULL,
	SoLuongSPTon INT DEFAULT NULL,
	GiaNhap INT DEFAULT NULL,
	GiaBan INT DEFAULT NULL,
	IdDSP INT FOREIGN KEY REFERENCES DongSP(Id),
	IdNsx INT FOREIGN KEY REFERENCES Nsx(Id),
	IdMauSac INT FOREIGN KEY REFERENCES MauSac(Id),
)

CREATE TABLE HoaDon(
	Id INT PRIMARY KEY IDENTITY,
	Ma VARCHAR(20) DEFAULT NULL,
	NgayTao DATE DEFAULT NULL,
	NgayThanhToan DATE DEFAULT NULL,
	NgayShipHang DATE DEFAULT NULL,
	NgayNhanHang DATE DEFAULT NULL,
	TinhTrangHD INT DEFAULT NULL,
	TenNguoiNhan NVARCHAR(50) DEFAULT NULL,
	DiaChi NVARCHAR(100) DEFAULT NULL,
	Sdt VARCHAR(10) DEFAULT NULL,
	IdKH INT FOREIGN KEY REFERENCES KhachHang(Id),
	IdNV INT FOREIGN KEY REFERENCES NhanVien(Id),
)

CREATE TABLE HoaDonChiTiet(
	IdHoaDon INT FOREIGN KEY REFERENCES HoaDon(Id),
	IdChiTietSanPham INT FOREIGN KEY REFERENCES ChiTietSanPham(Id),
	SoLuong INT DEFAULT NULL,
	DonGia INT DEFAULT NULL
)

-- Insert dữ liệu cho bảng cửa hàng
INSERT INTO CuaHang VALUES('CH1',N'CuaHang1', N'Cầu Giấy', N'Hà Nội', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH2',N'CuaHang2', N'Phú Bình', N'Thái Nguyên', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH3',N'CuaHang3', N'Phủ Lý', N'Hà Nam', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH4',N'CuaHang4', N'Gia Lộc', N'Hải Dương', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH5',N'CuaHang5', N'Yên Phong', N'Bắc Ninh', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH6',N'CuaHang6', N'An Nhơn', N'Bình Định', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH7',N'CuaHang7', N'Ân Thi', N'Hưng Yên', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH8',N'CuaHang8', N'Ba Chẽ', N'Quảng Ninh', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH9',N'CuaHang9', N'Bà Rịa', N'Vũng Tàu', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH10',N'CuaHang10', N'Bá Thước', N'Thanh Hóa', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH11',N'CuaHang11', N'Ba Vì', N'Hà Nội', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH12',N'CuaHang12', N'Bác Ái', N'Ninh Thuận', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH13',N'CuaHang13', N'Bắc Giang', N'Bắc Giang', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH14',N'CuaHang14', N'Bắc Hà', N'Lào Cai', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH15',N'CuaHang15', N'Bắc Mê', N'Hà Giang', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH16',N'CuaHang16', N'Bắc Sơn', N'Lạng Sơn', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH17',N'CuaHang17', N'Long Vĩ', N'Hải Phòng', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH18',N'CuaHang18', N'Bạch Thông', N'Bắc Kan', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH19',N'CuaHang19', N'Bảo Lạc', N'Cao Bằng', N'Việt Nam')
INSERT INTO CuaHang VALUES('CH20',N'CuaHang20', N'Bảo Lộc', N'Lâm Đồng', N'Việt Nam')

-- Insert dữ liệu cho bảng dòng sản phẩm
INSERT INTO DongSP VALUES('SP1',N'Điều Hòa','dieuhoa.com')
INSERT INTO DongSP VALUES('SP2',N'Ti Vi','tivi.com')
INSERT INTO DongSP VALUES('SP3',N'Tủ Lạnh','tulanh.com')
INSERT INTO DongSP VALUES('SP4',N'Máy Giặt','maygiat.com')
INSERT INTO DongSP VALUES('SP5',N'Lò Vi Sóng','lovisong.com')
INSERT INTO DongSP VALUES('SP6',N'Máy Xay','mayxay.com')
INSERT INTO DongSP VALUES('SP7',N'Máy Mát Xa','maymatxa.com')
INSERT INTO DongSP VALUES('SP8',N'Lap Top','laptop.com')
INSERT INTO DongSP VALUES('SP9',N'Điện Thoại','dienthoai.com')
INSERT INTO DongSP VALUES('SP10',N'Máy Tính Bảng','maytinhbang.com')
INSERT INTO DongSP VALUES('SP11',N'Bình Nóng Lạnh','binhnonglanh.com')
INSERT INTO DongSP VALUES('SP12',N'Máy Sưởi','maysuoi.com')
INSERT INTO DongSP VALUES('SP13',N'Loa Nghe Nhạc','loanghenhac.com')
INSERT INTO DongSP VALUES('SP14',N'Bàn Phím','banphim.com')
INSERT INTO DongSP VALUES('SP15',N'Chuột','chuotmaytinh.com')
INSERT INTO DongSP VALUES('SP16',N'Tai Nghe','tainghe.com')
INSERT INTO DongSP VALUES('SP17',N'Card đồ họa','cardmanhinh.com')
INSERT INTO DongSP VALUES('SP18',N'Chip xử lý (CPU)','chipxuly.com')
INSERT INTO DongSP VALUES('SP19',N'RAM máy tính','rammaytinh.com')
INSERT INTO DongSP VALUES('SP20',N'Máy rửa chén','mayruachen.com')

-- Insert dữ liệu cho bảng chức vụ
INSERT INTO ChucVu VALUES('TCH',N'Trưởng cửa hàng')
INSERT INTO ChucVu VALUES('PCH',N'Phó cửa hàng')
INSERT INTO ChucVu VALUES('NVBH',N'Nhân viên bán hàng')
INSERT INTO ChucVu VALUES('NVTT',N'Nhân viên thanh toán')
INSERT INTO ChucVu VALUES('LC',N'Lao công')
INSERT INTO ChucVu VALUES('BV',N'Bảo vệ')
