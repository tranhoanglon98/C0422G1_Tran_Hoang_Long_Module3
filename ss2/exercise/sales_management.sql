drop database if exists sales_management;

create database sales_management;

use sales_management;

create table customer(
	customer_id int auto_increment primary key,
    customer_name varchar(55) not null,
    customer_age tinyint not null
);

create table product(
	product_id int auto_increment primary key,
    product_name varchar(55) not null,
    price double not null default 0 check(price >=0)
);

create table orders(
	order_id int auto_increment primary key,
    customer_id int not null,
    order_date datetime not null,
    total_price double not null default 0 check(total_price >=0),
    foreign key (customer_id) references customer(customer_id)
);

create table order_detail(
	order_id int,
    product_id int,
    order_quantity int not null default 0 check (order_quantity >=0),
    primary key (order_id,product_id),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references product(product_id)
);


