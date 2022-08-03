drop database if exists `user`;

create database `user`;
use `user`;

create table user_detail (
 email varchar(220) not null primary key,
 address varchar(120) not null,
 profession varchar(220) not null,
 user_type varchar(120)
);

create table users (
 id  int(3) not null auto_increment primary key,
 `name` varchar(120) not null,
 email varchar(220) not null,
 country varchar(120),
 foreign key (email) references user_detail(email)
);


insert into user_detail (email,address,profession,user_type) values ('minh@codegym.vn','huế','thợ hồ','gold');
insert into user_detail (email,address,profession,user_type) values ('kante@che.uk','ĐN','thợ hồ','gold');
insert into user_detail (email,address,profession,user_type) values ('long@codegym.vn','huế','thợ hồ','gold');
insert into user_detail (email,address,profession,user_type) values ('trung@che.uk','ĐN','thợ hồ','gold');
insert into user_detail (email,address,profession,user_type) values ('duyen@codegym.vn','huế','thợ hồ','gold');
insert into user_detail (email,address,profession,user_type) values ('trang@che.uk','huế','thợ hồ','gold');


insert into users(`name`, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(`name`, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(`name`, email, country) values('Long','long@codegym.vn','Viet Nam');
insert into users(`name`, email, country) values('Trung','trung@che.uk','UK');
insert into users(`name`, email, country) values('Duyen','duyen@codegym.vn','Viet Nam');
insert into users(`name`, email, country) values('Trang','trang@che.uk','US');


delimiter $$
drop procedure if exists display_user_list $$
create procedure display_user_list()
begin 
	select * from users;
end $$
delimiter ;

delimiter $$
drop procedure if exists update_user $$
create procedure update_user(in user_id int, user_name varchar(55), user_email varchar(55), user_country varchar(25))
begin 
	update users set `name` = user_name, email = user_email, country = user_country where id = user_id;
end $$
delimiter ;

delimiter $$
drop procedure if exists add_user $$
create procedure add_user(in user_name varchar(55), user_email varchar(55), user_country varchar(25))
begin 
	insert into users(`name`, email, country) values (user_name,user_email,user_country);
end $$
delimiter ;

delimiter $$
drop procedure if exists delete_user $$
create procedure delete_user(in user_id int)
begin 
	delete from users where id = user_id;
end $$
delimiter ;

delimiter $$
drop procedure if exists add_user_detail $$
create procedure add_user_detail(in user_email varchar(220), user_address varchar(55), user_profession varchar(55) , `type` varchar(55) )
begin 
	insert into user_detail (email,address,profession,user_type) values (user_email,user_address,user_profession,`type`);
end $$
delimiter ;








