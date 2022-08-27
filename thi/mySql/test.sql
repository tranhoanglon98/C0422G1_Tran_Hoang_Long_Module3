drop database if exists test;

create database test;

use test;

create table `level` (
	id int primary key auto_increment,
    level_name varchar(30)
);

create table student (
	id int auto_increment primary key,
    full_name varchar(12),
    birthday date,
    address varchar(250),
	phone varchar(20)
);

create table course(
	id int auto_increment primary key,
    course_code varchar(50),
    class_name varchar(30),
    `time` int,
    cost double
);

create table course_detail(
	id int auto_increment primary key,
	student_id int not null,
    course_id int not null,
    foreign key (student_id) references student(id),
    foreign key (course_id) references course(id)
);



create table module(
	id  int primary key auto_increment,
	module_code varchar(50),
    module_name varchar(120),
    course_id int not null,
    foreign key (course_id) references course(id)
);



create table lesson(
	lesson_id int auto_increment primary key,
    title varchar(120),
    type_lesson varchar(50),
    level_id int not null,
    link varchar(250),
    module_id int not null,
    foreign key (level_id) references `level`(id),
    foreign key (module_id) references module(id)
);




insert into `level` (level_name) 
	values
		('level 1'),
		('level 2'),
		('level 3'),
		('level 4'),
		('level 5'),
		('level 6'),
		('level 7'),
		('level 8'),
		('level 9'),
		('level 10');


insert into student(full_name,birthday,address,phone) value('Tran A','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran B','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran V','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran D','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran G','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran H','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran E','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran W','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran H','2020-12-12','Hue','215445');
insert into student(full_name,birthday,address,phone) value('Tran F','2020-12-12','Hue','215445');


insert into course(course_code,class_name,`time`,cost) value ('JAVA 1','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 2','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 3','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 4','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 5','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 6','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 7','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 8','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 9','java back end 1',6,5555);
insert into course(course_code,class_name,`time`,cost) value ('JAVA 10','java back end 1',6,5555);


insert into course_detail(student_id,course_id) value(1,2);
insert into course_detail(student_id,course_id) value(1,3);
insert into course_detail(student_id,course_id) value(1,4);
insert into course_detail(student_id,course_id) value(1,5);
insert into course_detail(student_id,course_id) value(2,2);
insert into course_detail(student_id,course_id) value(3,2);
insert into course_detail(student_id,course_id) value(5,6);
insert into course_detail(student_id,course_id) value(6,8);
insert into course_detail(student_id,course_id) value(7,1);
insert into course_detail(student_id,course_id) value(1,2);




insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',1);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',2);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',2);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',1);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',2);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',2);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',1);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',2);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',2);
insert into module (module_code,module_name,course_id) value('JAVA-WBDS1','JAVA-WBDS',1);





insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien1','Bai giang',1,'https://abc.com',2);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien2','Bai giang',1,'https://abc.com',1);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien3','Bai giang',1,'https://abc.com',3);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien4','Bai giang',1,'https://abc.com',1);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien5','Bai giang',1,'https://abc.com',1);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Css','Bai giang',9,'https://abce.com',2);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien7','Bai giang',1,'https://abc.com',2);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien7','Bai giang',1,'https://abc.com',4);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Cau dieu kien8','Bai giang',1,'https://abc.com',2);
insert into lesson (title,type_lesson,level_id,link,module_id) value ('Bai tap','Bai tap',6,'https://abcm.com',1);
	
