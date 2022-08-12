drop database if exists demo;
create database demo;

use demo;
create table products(
id int, 
product_code varchar(20),
product_name varchar(45),
product_price int,
product_aount int,
product_description varchar(45),
product_status varchar(25));
insert into products
values (1,'A1','Tủ Lạnh',1000000,10,'Tủ Lạnh Gia Đình','Mới'),
       (2,'A2','Điều Hòa',1500000,5,'Dùng Công Nghiệp','Củ'),
       (3,'A3','Quạt',500000,15,'Cá Nhân','mới'),
       (4,'B1','Bếp Điện',2000000,2,'Gia Đình','Đã Sửa Chữa');
       
-- 1. tạo INDEX
-- tạo UNIQUE INDEX
 create unique index id_code on products(product_code);
 drop index id_code on products;
explain select * from products where product_code='B1';

alter table products add index index_name_price(product_name, product_price);
alter table products drop index index_name_price;
explain select * from products where product_name='Quạt' and product_price=500000;

-- tạo VIEW
create view products_view as
select product_code, product_name, product_price, product_status
from products;

-- cập nhận VIEW
 create or replace view products_view as
 select product_code, product_name, product_aount, product_price
 from products;
 
-- xóa view
drop view products_view;

-- tạo STORE PROCEDURE
-- tạo procedure hiển thị tất cả thông tin bản products
delimiter //
create procedure get_products()
begin
select * from products;
end //
delimiter ;
call get_products();

-- tạo store procedure thêm mới 1 sản phẩm
delimiter //
create procedure add_products(in id int,in `code` varchar(20), in `name` varchar(45), in price int, in aount int, in des varchar(45), in `status`varchar(45))
begin
insert into products values(id,`code`,`name`,price,aount,des,`status`);
end //
delimiter ;
call add_products(5,'D2','Tủ',3000000,3,'Cá Nhân','củ');
select * from products;

-- chỉnh sử theo id
delimiter //
create procedure update_products(in p_id int,in p_code varchar(20), in p_name varchar(45), in price int, in aount int, in des varchar(45), in p_status varchar(45))
begin
update products
set product_code= p_code,
     product_name =p_name,
     product_price= price,
     product_aount=aount,
     product_description= des,
     product_status= p_status
where id= p_id;
select * from products;
end //
delimiter ;
call update_products(5,'N1','Tủ Mới',10000000,1,'đẹp','Mới');

-- xóa theo id
delimiter //
create procedure delete_products(in p_id int)
begin
delete from products
where id=p_id;
select * from products;
end //
delimiter ;
call delete_products(1);
