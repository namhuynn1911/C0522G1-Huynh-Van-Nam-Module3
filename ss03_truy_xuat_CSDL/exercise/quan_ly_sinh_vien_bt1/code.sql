use quan_ly_sinh_vien_bt2;

select * from student
where student_name like 'h%';

select* from class
where month(start_data)=12;

select *from subject
where credit between 3 and 5;

set sql_safe_updates=0;
update student set class_id =2
where student_name='hung';

select s.student_name as studen_nam, su.sub_name as subject_name, m.mark
from student s
join `subject` su on s.`status`=su.`status`
join mark m on su.sub_id=m.sub_id
order by m.mark desc,s.student_name asc;
