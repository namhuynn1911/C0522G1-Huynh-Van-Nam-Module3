drop database if exists quan_ly_ban_hang_bt;
create database quan_ly_ban_hang_bt;

use quan_ly_ban_hang_bt;

create table customer(
customer_id int auto_increment primary key,
customer_name varchar(25),
customer_age tinyint);

insert into customer
values (1,'Minh Quan',10),
       (2,'Ngoc Oanh',20),
       (3,'Hong Ha',50);
       
create table `order`(
order_id int auto_increment primary key,
customer_id int,
order_date datetime,
order_total_price int,
foreign key(customer_id)references customer(customer_id)
);
insert into `order`
values (1,1,'2006-03-21',null),
       (2,2,'2006-03-23',null),
       (3,1,'2006-03-16',null);
       
create table product(
product_id int auto_increment primary key,
product_name varchar(25),
product_price int);
insert into product
values (1,'May Giat',3),
       (2,'Tu Lanh',5),
       (3,'Dieu Hoa',7),
       (4,'Quat',1),
       (5,'Bep Dien',2);
       
create table order_detail(
order_id int ,
product_id int,
od_QTY int,
primary key(order_id,product_id),
foreign key(order_id) references `order`(order_id),
foreign key(product_id)references product(product_id));

insert into order_detail
values (1,1,3),
       (1,3,7),
       (1,4,2),
       (2,1,1),
       (3,1,8),
       (2,5,4),
       (2,3,3);
       
-- oid,odata,oprice
select order_id, order_date,order_total_price from `order`;

select c.customer_name, p.product_name
from customer c
join `order` o on c.customer_id=o.customer_id
join order_detail od on o.order_id = od.order_id
join product p on od.product_id = p.product_id;

select c.customer_name
from customer c
where c.customer_id 
not in (select c.customer_id 
from customer c
join `order` o on c.customer_id=o.customer_id
join order_detail od on o.order_id = od.order_id
join product p on od.product_id = p.product_id);

select `order`.order_id, `order`.order_date, sum(order_detail.od_QTY*product.product_price) as gia_tien
from `order`
join order_detail on `order`.order_id = order_detail.order_id
join product on order_detail.product_id = product.product_id
group by `order`.order_id;
