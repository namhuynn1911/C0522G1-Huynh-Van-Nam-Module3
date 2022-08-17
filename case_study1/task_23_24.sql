use furama_da_nang;

-- 23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
delimiter //
create procedure sp_xoa_khach_hang(in id int)
begin
update khach_hang
set is_delete = 1
where ma_khach_hang =id;
end //
delimiter ;
drop procedure sp_xoa_khach_hang;

call sp_xoa_khach_hang(2);
select * from khach_hang;

delimiter //
create procedure sp_them_moi_hop_dong (in mhd int, in nlhd date, in nkt date, in tdc int, in manv int, in makh int, in madv int)
begin
insert into hop_dong(ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
values (mhd, nlhd, nkt, tdc, manv,makh, madv);
end //
delimiter ;
drop procedure sp_them_moi_hop_dong;
call sp_them_moi_hop_dong(13,'2021-11-19','2021-07-25',0,7,5,4);