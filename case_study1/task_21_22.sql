use furama_da_nang;

-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
create view v_nhan_vien as
select nv.ho_ten, nv.ngay_sinh, nv.so_dien_thoai, nv.email, nv.dai_chi
from nhan_vien nv
 join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where nv.dai_chi like '%Hải Châu%'and hd.ngay_lam_hop_dong ='2019-12-12';
drop view v_nhan_vien;


-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
update v_nhan_vien 
set dai_chi  ='Liên Chiễu, Đà Nẵng';
select * from v_nhan_vien;