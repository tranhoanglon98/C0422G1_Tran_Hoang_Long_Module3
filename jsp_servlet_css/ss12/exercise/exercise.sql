drop database if exists exercise;

CREATE DATABASE exercise;
USE exercise;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Long','long@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Trung','trung@che.uk','UK');
insert into users(name, email, country) values('Duyen','duyen@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Trang','trang@che.uk','US');
