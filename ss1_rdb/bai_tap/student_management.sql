create database if not exists student_management;
use student_management;
create table student(
`id` int not null,
`name` VARCHAR(50) NULL,
`age` int null,
`country` varchar(45) null,
primary key (`id`)
);
create table class(
`id` int not null primary key,
`name` VARCHAR(50) NULL
);
create table teacher(
`id` int not null primary key,
`name` VARCHAR(50) NULL,
`age` int,
`country` VARCHAR(50) NULL
);

