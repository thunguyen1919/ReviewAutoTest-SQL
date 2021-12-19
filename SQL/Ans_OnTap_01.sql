use FSoft01

-- Câu 3: Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ
select DongXe
from DONGXE
where SoChoNgoi > 5

-- Câu 4: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe
-- thuộc hãng xe “Toyota” với mức phí có đơn giá là 15.000 VNĐ/km hoặc những dòng xe
-- thuộc hãng xe “KIA” với mức phí có đơn giá là 20.000 VNĐ/km

select c.TenNhaCC
from (DANGKYCUNGCAP dk 
Join NHACUNGCAP c on dk.MaNhaCC = c.MaNhaCC)
join MUCPHI m on dk.MaMP = m.MaMP
join DONGXE d on dk.DongXe = d.DongXe
where (d.HangXe = 'Toyota' and m.DonGia = 15000) OR (d.HangXe = 'KIA' and m.DonGia = 20000)


-- Câu 5: Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung
-- cấp và giảm dần theo mã số thuế

select TenNhaCC, MaSoThue
from NHACUNGCAP
order by TenNhaCC Asc, MaSoThue Desc



--Câu 6: Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với
-- yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu
-- cung cấp là “20/11/2015”

Select c.TenNhaCC, count(dk.MaDKCC) as N'Số lần DK'
from NHACUNGCAP c join DANGKYCUNGCAP dk
on c.MaNhaCC = dk.MaNhaCC
where dk.NgayBatDauCungCap = '2015-11-20'
Group by dk.MaDKCC, c.TenNhaCC

SELECT NCC.MaNhaCC, NCC.TenNhaCC, count(NCC.MaNhaCC) as SoLanCC
FROM NHACUNGCAP NCC JOIN DANGKYCUNGCAP DK
ON NCC.MaNhaCC = DK.MaNhaCC
WHERE DK.NgayBatDauCungCap = '2015-11-20'
GROUP BY NCC.MaNhaCC, NCC.TenNhaCC



-- Câu 7: Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với 
-- yêu cầu mỗi hãng xe chỉ được liệt kê một lần

Select distinct HangXe 
from DONGXE


-- Câu 8: Liệt kê MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia,
-- HangXe, NgayBatDauCC, NgayKetThucCC của tất cả các lần đăng ký cung cấp phương
-- tiện với yêu cầu những nhà cung cấp nào chưa từng thực hiện đăng ký cung cấp phương
-- tiện thì cũng liệt kê thông tin những nhà cung cấp đó ra

select dk.MaDKCC, c.MaNhaCC, c.TenNhaCC, c.DiaChi, c.MaSoThue, l.TenLoaiDV, m.DonGia, d.HangXe, dk.NgayBatDauCungCap, dk.NgayKetThucCungCap
from NHACUNGCAP c left join DANGKYCUNGCAP dk on c.MaNhaCC = dk.MaNhaCC
left join LOAIDICHVU l on dk.MaLoaiDV = l.MaLoaiDV
left join MUCPHI m on dk.MaMP = m.MaMP
left join DONGXE d on dk.DongXe = d.DongXe



-- Câu 9: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện
-- thuộc dòng xe “Hiace” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Cerato”

select distinct c.TenNhaCC
from NHACUNGCAP c join DANGKYCUNGCAP dk on c.MaNhaCC = dk.MaNhaCC
where dk.DongXe = 'Hiace' or dk.DongXe = 'Cerato'

select MaNhaCC, TenNhaCC
from NHACUNGCAP c
where c.MaNhaCC in (select dk.MaNhaCC
					from DANGKYCUNGCAP dk
					where dk.DongXe = 'Hiace' or dk.DongXe = 'Cerato')



-- Câu 10: Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp
-- phương tiện lần nào cả.

select *
from NHACUNGCAP c
where c.MaNhaCC not in (Select dk.MaNhaCC
						from DANGKYCUNGCAP dk)

select *
from NHACUNGCAP c
where not exists (select *
				  from DANGKYCUNGCAP dk
				  where c.MaNhaCC = dk.MaNhaCC)




-- Câu 11: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp 
-- phương tiện thuộc dòng xe 'Hiace' và chưa từng đăng ký cung cấp dòng xe 'Cerato'

select *
from NHACUNGCAP c
where c.MaNhaCC in (select dk.MaNhaCC
					from DANGKYCUNGCAP dk
					where dk.DongXe = 'Hiace' and dk.DongXe <> 'Cerato')



-- Câu 12: Liệt kê thông tin của những dòng xe chưa được nhà cung cấp nào đăng ký 
-- thuê vào năm 2015 nhưng đã từng dky cho thuê vào năm 2016

select distinct dk.DongXe
from NHACUNGCAP c join DANGKYCUNGCAP dk
on c.MaNhaCC=dk.MaNhaCC
where YEAR(dk.NgayBatDauCungCap) > '2015' and YEAR(dk.NgayBatDauCungCap) = '2016'



-- Câu 13: Hiển thị thông tin của những dòng xe có số lần được đăng ký cho thuê 
-- nhiều nhất từ đầu năm 2016 đến hết năm 2019

select dk.DongXe, count(dk.MaDKCC) as N'Số lần dki nhieu nhat'
from DANGKYCUNGCAP dk
group by dk.DongXe
having count(dk.MaDKCC) >= All(select count(d.MaDKCC)
							   from DANGKYCUNGCAP d
							   group by d.DongXe)


-- Câu 14: Tính tổng số lượng xe đã được dky cho thuê tương ứng với từng dòng xe 
-- với yêu cầu chỉ thực hiện tính đối với những lần đăng ký cho thuê có mức phí 
-- với đơn giá là 20000 VNĐ trên 1 km 

select dk.DongXe, count(dk.MaDKCC) as 'So luong xe'
from DANGKYCUNGCAP dk join MUCPHI m on dk.MaMP = m.MaMP
where m.DonGia = '20000'
group by dk.DongXe
