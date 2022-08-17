use furama_da_nang;
-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
update dich_vu_di_kem dvdk
set dvdk.gia=dvdk.gia*2
where ma_dich_vu_di_kem in(select hdct.ma_dich_vu_di_kem 
from hop_dong_chi_tiet hdct
join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
 where hdct.so_luong>10 and year(hd.ngay_lam_hop_dong)=2020);
select * from dich_vu_di_kem;

