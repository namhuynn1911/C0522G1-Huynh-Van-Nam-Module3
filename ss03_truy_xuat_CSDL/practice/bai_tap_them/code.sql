use c0422g1;
-- câu 1
select student.id,student.`name`, student.birthday, student.gender, student.email, student.`point`, student.`account`,class.`name`
from student inner join class on student.class_id=class.id
order by id;
-- câu 2
select student.id,student.`name`, student.birthday, student.gender, student.email, student.`point`, student.`account`,class.`name`
from student left join class on student.class_id=class.id
order by id;

-- câu 3
select *
from student
where `name` like '%Tien' or `name` like '%Toan';

-- câu 4
select*
from student
where `point` >5;

-- câu 5
select *
from student
where `name` like 'nguyen%';

-- câu 6
select `point` , count(id) as so_luong
from student
group by `point`
order by `point`;

-- câu 7
select `point` , count(id) as so_luong
from student
where `point`>5
group by `point`
order by `point`;

-- câu 8
select `point` , count(id) as so_luong
from student
where `point`>5  
group by `point`
having so_luong >=2
order by `point`;

-- câu 9
select *
from student
where class_id=1
group by id
order by `name`;