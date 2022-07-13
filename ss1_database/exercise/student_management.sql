create database student_management;

use student_management;

CREATE TABLE student (
    id_student INT,
    `name` VARCHAR(55),
    age INT,
    country VARCHAR(55)
);

alter table student 
add primary key (id_student);

alter table student 
change column id_student id_student int AUTO_INCREMENT;

insert into student (`name`,age,country) 
value ("long",32,"Việt Nam"),("Phú",23,"lào");

select*from student;

create table class(
id int,
`name` varchar(55)
);

create table teacher(
id int,
`name` varchar(55),
age int,
country varchar(55)
);