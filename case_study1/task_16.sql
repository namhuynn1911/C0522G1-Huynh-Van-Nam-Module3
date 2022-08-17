use furama_da_nang;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

-- SET SQL_SAFE_UPDATES = 0;
update nhan_vien set is_delete =1 where ma_nhan_vien not in (
select ma_nhan_vien
from hop_dong
where year(ngay_lam_hop_dong)between 2019 and 2021);
select * from nhan_vien
where nhan_vien.is_delete=1;










