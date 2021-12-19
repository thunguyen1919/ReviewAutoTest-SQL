use FSoft02

-- Câu 1:Liệt kê MaDatPhong, MaDV, SoLuong của tất cả các dịch vụ có số lượng lớn 
-- hơn 3 và nhỏ hơn 10
/*
select *
from CHI_TIET_SU_DUNG_DV
where SOLUONG > 3 and SOLUONG < 10
*/


-- Câu 2: Cập nhật dữ liệu trên trường GiaPhong thuộc bảng PHONG tăng lên 10,000 VNĐ 
-- so với giá phòng hiện tại, chỉ cập nhật giá phòng của những phòng có số khách 
-- tối đa lớn hơn 10
/*
update PHONG
set GIAPHONG = GIAPHONG + 10.000
where SOKHACHTOIDA > 10
*/


-- Câu 3: Xóa tất cả những đơn đặt phòng (từ bảng DAT_PHONG) có trạng thái đặt 
-- (TrangThaiDat) là “Da huy”.
/*
delete from DAT_PHONG
where TRANGTHAIDAT='DA HUY'
*/


-- Câu 4: Hiển thị TenKH của những khách hàng có tên bắt đầu là một trong các ký tự 
-- “H”, “N”, “M” và có độ dài tối đa là 20 ký tự
/*
select TENKH
from KHACH_HANG 
where TENKH like '[HNM]%' and LEN(TENKH) <= 20
*/


-- Câu 5: Hiển thị TenKH của tất cả các khách hàng có trong hệ thống, TenKH nào 
-- trùng nhau thì chỉ hiển thị một lần. Sinh viên sử dụng hai cách khác nhau 
-- để thực hiện yêu cầu trên, mỗi cách sẽ được 0,5 điểm
/*
select TenKH
from KHACH_HANG
group by TENKH

select distinct TenKH
from KHACH_HANG
*/


-- Câu 6: Hiển thị MaDV, TenDV, DonViTinh, DonGia của những dịch vụ đi kèm có 
-- DonViTinh là “lon” và có DonGia lớn hơn 10,000 VNĐ hoặc những dịch vụ đi kèm 
-- có DonViTinh là “Cai” và có DonGia nhỏ hơn 5,000 VNĐ
/*
select *
from DICH_VU_DI_KEM
where (DONVITINH like 'LON' and DONGIA > 10.000) or (DONVITINH like 'CAI' and DONGIA < 5.000)
*/


-- Câu 7: Hiển thị MaDatPhong, MaPhong, LoaiPhong, SoKhachToiDa, GiaPhong, MaKH, 
-- TenKH, SoDT, NgayDat, GioBatDau, GioKetThuc, MaDichVu, SoLuong, DonGia của 
-- những đơn đặt phòng có năm đặt phòng là “2016”, “2018” và đặt những phòng có 
-- giá phòng > 50,000 VNĐ/ 1 giờ
/*
select d.MADATPHONG, d.MAPHONG, p.LOAIPHONG, p.SOKHACHTOIDA, p.GIAPHONG, k.MAKH, k.TENKH, k.SODT, d.NGAYDAT, d.GIOBATDAU, d.GIOKETTHUC, c.MADV, c.SOLUONG, dv.DONGIA
from DAT_PHONG d 
join PHONG p on d.MAPHONG = p.MAPHONG
join KHACH_HANG k on d.MAKH = k.MAKH
join CHI_TIET_SU_DUNG_DV c on d.MADATPHONG = c.MADATPHONG
join DICH_VU_DI_KEM dv on c.MADV = dv.MADV
where YEAR(NGAYDAT) in ('2016', '2018') and GIAPHONG > 50.000
*/


-- Câu 8: Hiển thị MaDatPhong, MaPhong, LoaiPhong, GiaPhong, TenKH, NgayDat, 
-- TongTienHat, TongTienSuDungDichVu, TongTienThanhToan tương ứng với từng mã đặt 
-- phòng có trong bảng DAT_PHONG. Những đơn đặt phòng nào không sử dụng dịch vụ đi 
-- kèm thì cũng liệt kê thông tin của đơn đặt phòng đó ra

select d.MADATPHONG, d.MAPHONG, p.MAPHONG, p.LOAIPHONG, p.GIAPHONG, k.TENKH, d.NGAYDAT
from DAT_PHONG d left join KHACH_HANG k on k.MAKH = d.MAKH
left join PHONG p on d.MAPHONG = p.MAPHONG
left join CHI_TIET_SU_DUNG_DV c on d.MADATPHONG = c.MADATPHONG
group by d.MADATPHONG, d.MAPHONG, p.MAPHONG, p.LOAIPHONG, p.GIAPHONG, k.TENKH, d.NGAYDAT


-- Câu 9: Hiển thị MaKH, TenKH, DiaChi, SoDT của những khách hàng đã từng đặt phòng 
-- và có địa chỉ ở “Hoa xuan”
/*
select *
from KHACH_HANG k
where DIACHI like 'Hoa Xuan' and exists (select *
										 from DAT_PHONG d
										 where k.MAKH = d.MAKH)
*/


-- Câu 10: Hiển thị MaPhong, LoaiPhong, SoKhachToiDa, GiaPhong, SoLanDat của những 
-- phòng được khách hàng đặt có số lần đặt lớn hơn 2 lần và trạng thái đặt là “Da dat”
/*
select p.MAPHONG, p.LOAIPHONG, p.SOKHACHTOIDA, p.GIAPHONG, count(d.MAKH) as 'So lan dat'
from PHONG p join DAT_PHONG d on p.MAPHONG = d.MAPHONG
group by p.MAPHONG, p.LOAIPHONG, p.SOKHACHTOIDA, p.GIAPHONG
*/
