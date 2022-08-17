use furama_da_nang;

 -- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
-- update khach_hang kh set is_delete=1
-- where ma_khach_hang in(select kh.ma_khach_hang from hop_dong where year(kh.ngay_lam_hop_dong)<2021);
set sql_safe_updates =0;
update khach_hang set is_delete = 1 
where ma_khach_hang in (select hd.ma_khach_hang from hop_dong hd
where year(ngay_lam_hop_dong) < 2021);
select * from khach_hang
where khach_hang.is_delete=1;

