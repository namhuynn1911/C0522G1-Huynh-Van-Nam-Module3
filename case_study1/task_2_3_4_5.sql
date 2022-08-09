use furama_da_nang;
select ma_nhan_vien, ho_ten,char_length(ho_ten) as length
from nhan_vien
where ( ho_ten like 'H%' or ho_ten like 'K%' or ho_ten like 'T%' )and char_length(ho_ten) <= 15;

select ma_khach_hang, ho_ten 
from khach_hang
where ( dia_chi like '%Đà Nẵng' or dia_chi like '%Quảng Trị') and (year(curdate()) - year(ngay_sinh) between 18 and 50);

select khach_hang.ma_khach_hang,khach_hang.ho_ten, count(hop_dong.ma_khach_hang) as so_lan_dat_hang 
-- --as là do mình tạo ta một cột hiển thị;
from khach_hang join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
-- tạo khớp nối giữa hai bảng
where khach_hang.ma_loai_khach = 1
-- loại khách hàng pahir là Diamond
group by ho_ten
-- loại bỏ những tên trùng lặp
order by so_lan_dat_hang;
-- sắp xếp theo số lần đặt hàng
