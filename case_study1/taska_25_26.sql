use furama_da_nang;

-- 25.	Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong ra giao diện console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
create table `history`(
id int auto_increment primary key,
ma_hop_dong varchar(45),
old_is_delete bit,
new_is_delete bit,
time_delete date,
shd_con_lai int
);
drop table `history`;
delimiter //
create trigger tr_xoa_hop_dong
after update on hop_dong
for each row
begin
declare dem int;
select count(ma_hop_dong) into dem from hop_dong where is_delete = 0; 
insert into `history` (ma_hop_dong, old_is_delete, new_is_delete,time_delete,shd_con_lai)
values(old.ma_hop_dong, old.is_delete, new.is_delete, now(), dem);
end //
delimiter ;
drop trigger tr_xoa_hop_dong;
update hop_dong  set is_delete = 1
where ma_hop_dong = 1;
select * from `history`;
update hop_dong set is_delete =0;
