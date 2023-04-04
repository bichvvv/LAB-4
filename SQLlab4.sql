GO 
CREATE VIEW View1
as
select * from Sanpham 

go
select * from View1
go
create view view2 AS/
select top 100 percent Sanpham.masp, Sanpham.tensp, Hangsx.Tenhang, Sanpham.mausac, Sanpham.giaban, Sanpham.donvitinh, Sanpham.mota
from Sanpham
inner join Hangsx on Sanpham.mahangsx = Hangsx.Mahangsx
order by Sanpham.giaban desc;
go
----
SELECT  top 100 percent Hangsx.tenhang, Sanpham.giaban,Sanpham.mahangsx
FROM Sanpham
JOIN Hangsx ON Sanpham.mahangsx = Hangsx.mahangsx
WHERE Hangsx.tenhang = 'Samsung' AND Sanpham.giaban >= 100000 AND Sanpham.giaban <= 500000
-----
select* from Nhanvien
where Gioitinh = 'Nữ' and Phong = 'kế toán';
----------
CREATE VIEW Sanpham_View AS
select * from Sanpham, Hangsx, Nhanvien, Nhap, Xuat
----
CREATE VIEW masp_View AS
select masp,tensp,Tenhang,soluong,mausac,giaban,donvitinh,mota from Sanpham, Hangsx order by giaban desc
-----
CREATE view Hangsx_View AS
select * from Hangsx where Tenhang='Samsung'
--------

CREATE VIEW Nhsp_View AS
select Nhap.Sohdn, Sanpham.Masp, Sanpham.Tensp, Hangsx.Tenhang, Nhap.soluongN, Nhap.dongiaN, Nhap.soluongN*Nhap.dongiaN as tiennhap, Sanpham.mausac, Sanpham.donvitinh, Nhap.Ngaynhap, Nhanvien.Tennv, Nhanvien.Phong 
from Nhap
join Sanpham on Nhap.Masp = Sanpham.masp 
join Hangsx on Sanpham.Mahangsx = Hangsx.Mahangsx
join Nhanvien on Nhap.Manv = Nhanvien.Manv 
order by Nhap.Sohdn asc;
--------

CREATE VIEW Xuat_View AS
select Xuat.Sohdx, Sanpham.Masp, Sanpham.Tensp, Hangsx.Tenhang, Xuat.soluongX, Sanpham.giaban, Xuat.soluongX*Sanpham.giaban as tienxuat, Sanpham.mausac, Sanpham.donvitinh, Xuat.Ngayxuat, Nhanvien.Tennv, Nhanvien.Phong 
from Xuat
join Sanpham on Xuat.Masp = Sanpham.masp 
join Hangsx on Sanpham.Mahangsx = Hangsx.Mahangsx
join Nhanvien on Xuat.Manv = Nhanvien.Manv 
where month(Xuat.ngayxuat) = 10 AND Year(Xuat.ngayxuat) = 2018
order by Xuat.Sohdx asc;
-----
CREATE view Nhap_View AS
select Sohdn, Sanpham.masp, Tensp, soluongN, dongiaN, Ngaynhap, Tennv, Phong
from Nhap
join Sanpham on Nhap.Masp = Sanpham.masp 
join Hangsx on Sanpham.Mahangsx = Hangsx.Mahangsx
join Nhanvien on Nhap.Manv = Nhanvien.Manv 
where Hangsx.Tenhang = 'Samsung' AND Year(ngaynhap) = 2017
----------
CREATE VIEW Xuat_view AS
select top 10 Xuat.Sohdx, Sanpham.Tensp, Xuat.soluongX
from Xuat
inner join Sanpham on Xuat.Masp = Sanpham.masp
where year(xuat.ngayxuat) = '2023'
order by Xuat.soluongX desc;