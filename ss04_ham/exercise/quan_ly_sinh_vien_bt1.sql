use quan_ly_sinh_vien;

/*
Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
*/
select * from `subject` s
where s.credit =(select max(credit) from `subject`) ; 


select * from mark
 order by mark desc
 limit 1;
 
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_name , avg(m.mark) as diem_trung_binh
from mark m 
join student s on s.student_id = m.student_id
group by mark;
