use quan_ly_sinh_vien;

select student_name from student 
where student_name like 'h%';

select * from class
where star_date like '____-12-%';

select * from subject
where credit between 3 and 5;

SET SQL_SAFE_UPDATES = 0;
update student set class_id = 2 where student_name = 'Hung';

select student_name, sub_name, mark from student
inner join mark on student.student_id = mark.student_id
inner join subject on mark.sub_id = subject.sub_id
order by mark desc, student_name;
