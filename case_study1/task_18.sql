use furama_da_nang;

 -- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
update khach_hang set is_delete=1
where ma_khach_hang 
not in(
select ma_khach_hang from hop_dong
 where year(ngay_lam_hop_dong)=2021);
select * from khach_hang

