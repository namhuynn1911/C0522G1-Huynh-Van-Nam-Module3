drop database if exists user_bt1;
create database user_bt1;

use user_bt1;
create table users(
id int(3) auto_increment primary key,
`name` varchar(120) ,
email varchar(220),
country varchar(120));
insert into users(`name`,email,country)
values ("Huỳnh Văn Nam","namhuynh191193@gmail.com","Việt Nam"),
	   ("Ronadol","ronadol@gmail.com","Portuguese");
       
delimiter //
create procedure select_all()
begin
select * from users;
end //
delimiter ;
call select_all();

delimiter //
create procedure update_id(in p_id int,in p_name varchar(45),in p_email varchar(45),in p_country varchar(45))
begin
update users set `name`=p_name,
email=p_email,
country=p_country
where id=p_id;
end //
delimiter ;
drop procedure update_id;
call update_id(1,"huỳnh văn nam","namhuynh1911@gmail.com","Việt Nam");

delimiter //
create procedure delete_id(in p_id int)
begin
delete from users
where id=p_id;
end //
delimiter ;
drop procedure delete_id;
call delete_id(1);
