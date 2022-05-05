create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;

create table class(
class_id int auto_increment primary key not null,
class_name varchar(60) not null,
star_date datetime not null,
status bit
);

create table student(
student_id int not null auto_increment primary key,
student_name varchar(50) not null,
address varchar(50),
phone varchar(20),
status bit,
class_id int not null,
foreign key (class_id) references class (class_id)
);

create table subject(
sub_id int not null auto_increment primary key,
sub_name varchar(30) not null,
credit tinyint not null default 1 check (credit >= 1),
status bit default 1
);

create table mark(
mark_id int not null auto_increment primary key,
sub_id int not null,
student_id int not null,
mark float default 0 check (mark between 0 and  100),
exam_times tinyint default 1,
unique(sub_id,student_id),
foreign key (sub_id) references subject(sub_id),
 foreign key (student_id) references student(student_id)
);

USE quan_ly_sinh_vien;
INSERT INTO class
VALUES(1, 'A1', '2008-12-20', 1);
INSERT INTO class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO class
VALUES (3, 'B3', CURRENT_DATE, 0);

INSERT INTO student (student_name, address, phone, status, class_id)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student (student_name, address, status, class_id)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO student (student_name, address, phone, status, class_id)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO mark (sub_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
       
       
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.       
select * from subject
where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from subject
join mark on subject.sub_id = mark.sub_id
where mark = (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select * from student
join mark on student.student_id = mark.student_id
group by student.student_id
order by avg(mark.mark) desc;