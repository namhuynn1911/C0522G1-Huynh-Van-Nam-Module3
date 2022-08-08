drop database if exists student_management;
create database student_management;

use student_management;

create table student(
id int primary key,
name varchar(45),
age int,
country varchar(45)
);