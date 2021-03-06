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

-- Insert d??? li???u cho b???ng c???a h??ng
INSERT INTO CuaHang VALUES('CH1',N'CuaHang1', N'C???u Gi???y', N'H?? N???i', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH2',N'CuaHang2', N'Ph?? B??nh', N'Th??i Nguy??n', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH3',N'CuaHang3', N'Ph??? L??', N'H?? Nam', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH4',N'CuaHang4', N'Gia L???c', N'H???i D????ng', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH5',N'CuaHang5', N'Y??n Phong', N'B???c Ninh', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH6',N'CuaHang6', N'An Nh??n', N'B??nh ?????nh', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH7',N'CuaHang7', N'??n Thi', N'H??ng Y??n', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH8',N'CuaHang8', N'Ba Ch???', N'Qu???ng Ninh', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH9',N'CuaHang9', N'B?? R???a', N'V??ng T??u', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH10',N'CuaHang10', N'B?? Th?????c', N'Thanh H??a', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH11',N'CuaHang11', N'Ba V??', N'H?? N???i', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH12',N'CuaHang12', N'B??c ??i', N'Ninh Thu???n', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH13',N'CuaHang13', N'B???c Giang', N'B???c Giang', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH14',N'CuaHang14', N'B???c H??', N'L??o Cai', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH15',N'CuaHang15', N'B???c M??', N'H?? Giang', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH16',N'CuaHang16', N'B???c S??n', N'L???ng S??n', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH17',N'CuaHang17', N'Long V??', N'H???i Ph??ng', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH18',N'CuaHang18', N'B???ch Th??ng', N'B???c Kan', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH19',N'CuaHang19', N'B???o L???c', N'Cao B???ng', N'Vi???t Nam')
INSERT INTO CuaHang VALUES('CH20',N'CuaHang20', N'B???o L???c', N'L??m ?????ng', N'Vi???t Nam')

-- Insert d??? li???u cho b???ng d??ng s???n ph???m
INSERT INTO DongSP VALUES('SP1',N'??i???u H??a','dieuhoa.com')
INSERT INTO DongSP VALUES('SP2',N'Ti Vi','tivi.com')
INSERT INTO DongSP VALUES('SP3',N'T??? L???nh','tulanh.com')
INSERT INTO DongSP VALUES('SP4',N'M??y Gi???t','maygiat.com')
INSERT INTO DongSP VALUES('SP5',N'L?? Vi S??ng','lovisong.com')
INSERT INTO DongSP VALUES('SP6',N'M??y Xay','mayxay.com')
INSERT INTO DongSP VALUES('SP7',N'M??y M??t Xa','maymatxa.com')
INSERT INTO DongSP VALUES('SP8',N'Lap Top','laptop.com')
INSERT INTO DongSP VALUES('SP9',N'??i???n Tho???i','dienthoai.com')
INSERT INTO DongSP VALUES('SP10',N'M??y T??nh B???ng','maytinhbang.com')
INSERT INTO DongSP VALUES('SP11',N'B??nh N??ng L???nh','binhnonglanh.com')
INSERT INTO DongSP VALUES('SP12',N'M??y S?????i','maysuoi.com')
INSERT INTO DongSP VALUES('SP13',N'Loa Nghe Nh???c','loanghenhac.com')
INSERT INTO DongSP VALUES('SP14',N'B??n Ph??m','banphim.com')
INSERT INTO DongSP VALUES('SP15',N'Chu???t','chuotmaytinh.com')
INSERT INTO DongSP VALUES('SP16',N'Tai Nghe','tainghe.com')
INSERT INTO DongSP VALUES('SP17',N'Card ????? h???a','cardmanhinh.com')
INSERT INTO DongSP VALUES('SP18',N'Chip x??? l?? (CPU)','chipxuly.com')
INSERT INTO DongSP VALUES('SP19',N'RAM m??y t??nh','rammaytinh.com')
INSERT INTO DongSP VALUES('SP20',N'M??y r???a ch??n','mayruachen.com')

-- Insert d??? li???u cho b???ng ch???c v???
INSERT INTO ChucVu VALUES('TCH',N'Tr?????ng c???a h??ng')
INSERT INTO ChucVu VALUES('PCH',N'Ph?? c???a h??ng')
INSERT INTO ChucVu VALUES('NVBH',N'Nh??n vi??n b??n h??ng')
INSERT INTO ChucVu VALUES('NVTT',N'Nh??n vi??n thanh to??n')
INSERT INTO ChucVu VALUES('LC',N'Lao c??ng')
INSERT INTO ChucVu VALUES('BV',N'B???o v???')
