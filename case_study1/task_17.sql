use furama_da_nang;


-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với 
-- Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.

create view v_khach_hang as 
select kh.ma_khach_hang, kh.ho_ten, sum(ifnull(dv.chi_phi_thue,0)+(ifnull(hdct.so_luong,0)*ifnull(dvdk.gia,0)))as tong_tien 
from khach_hang as kh
 join loai_khach as lk on lk.ma_loai_khach=kh.ma_loai_khach
 join hop_dong as hd on hd.ma_khach_hang=kh.ma_khach_hang
join dich_vu as dv on dv.ma_dich_vu=hd.ma_dich_vu
 join hop_dong_chi_tiet as hdct on hdct.ma_hop_dong = hd.ma_hop_dong
 join dich_vu_di_kem as dvdk on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
where year(ngay_lam_hop_dong)=2021
group by hd.ma_hop_dong,hd.ma_khach_hang;
SET SQL_SAFE_UPDATES = 0;
update khach_hang set ma_loai_khach = (select ma_loai_khach from loai_khach where ten_loai_khach ='Diamond')
where ma_khach_hang in(select ma_khach_hang from v_khach_hang where tong_tien>10000000); 

select  * from khach_hang;
select * from v_khach_hang ;
drop view v_khach_hang;