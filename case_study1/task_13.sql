use furama_da_nang;


-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem,max(hdct.so_luong) as so_luong_dat
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by dvdk.ma_dich_vu_di_kem
order by so_luong_dat desc
 limit 1;
-- having so_luong_dat = (select 
--         sum(so_luong)
--     from
--         hop_dong_chi_tiet
--     group by ma_dich_vu_di_kem
--     order by sum(so_luong) desc
--     limit 1);