use quan_ly_sinh_vien_bt2;
insert into class
values (1,'A1','2008-10-12',1),
       (2,'A2','2008-12-22',1),
       (3,'B3',current_date(),0);
insert into student 
values
(1,'Hung', 'Ha Noi', '0912113113', 1, 1),
(2,'Hoa', 'Hai phong',null, 1, 1),
(3,'Manh', 'HCM', '0123123123', 0, 2);
insert into `subject`
values
(1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
insert into mark(`sub_id`,student_id,mark,exam_rimes)
values
(1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1);
