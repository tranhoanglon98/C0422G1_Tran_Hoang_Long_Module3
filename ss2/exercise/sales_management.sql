DROP DATABASE IF EXISTS sales_management;

CREATE DATABASE sales_management;

USE sales_management;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(55) NOT NULL,
    customer_age TINYINT NOT NULL
);

CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(55) NOT NULL,
    price DOUBLE NOT NULL DEFAULT 0 CHECK (price >= 0)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total_price DOUBLE DEFAULT 0 CHECK (total_price >= 0),
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);

CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    order_quantity INT NOT NULL DEFAULT 0 CHECK (order_quantity >= 0),
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);


