use quan_ly_sinh_vien;

select * from student;

select *from student
where `status`=true;

select* from `subject`
where credit<10;

select student.student_id,student.student_name,class.class_name
from student join class on student.class_id=class.class_id;