DROP DATABASE IF EXISTS product_management;

CREATE DATABASE product_management;

USE product_management;

CREATE TABLE phone (
    phone_number VARCHAR(10) PRIMARY KEY UNIQUE
);

CREATE TABLE supplier (
    supplier_code INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(30) NOT NULL UNIQUE,
    address VARCHAR(60) NOT NULL UNIQUE,
    phone VARCHAR(10) NOT NULL,
    FOREIGN KEY (phone)
        REFERENCES phone (phone_number)
);

CREATE TABLE materials (
    materials_code INT PRIMARY KEY AUTO_INCREMENT,
    materials_name VARCHAR(45) NOT NULL UNIQUE
);

CREATE TABLE orders (
    orders_code INT PRIMARY KEY AUTO_INCREMENT,
    orders_date DATETIME NOT NULL,
    supplier_code INT NOT NULL,
    FOREIGN KEY (supplier_code)
        REFERENCES supplier (supplier_code)
);

CREATE TABLE order_detail (
    orders_code INT,
    materials_code INT,
    PRIMARY KEY (orders_code , materials_code),
    FOREIGN KEY (orders_code)
        REFERENCES orders (orders_code),
    FOREIGN KEY (materials_code)
        REFERENCES materials (materials_code)
);

CREATE TABLE delivery_note (
    delivery_code INT PRIMARY KEY AUTO_INCREMENT,
    delivery_date DATETIME NOT NULL
);

CREATE TABLE delivery_note_details (
    delivery_code INT,
    material_code INT,
    unit_price DOUBLE NOT NULL DEFAULT 0 CHECK (unit_price >= 0),
    production_quantity INT NOT NULL DEFAULT 0 CHECK (production_quantity >= 0),
    PRIMARY KEY (delivery_code , material_code),
    FOREIGN KEY (delivery_code)
        REFERENCES delivery_note (delivery_code),
    FOREIGN KEY (material_code)
        REFERENCES materials (materials_code)
);

CREATE TABLE receive_note (
    receive_code INT PRIMARY KEY AUTO_INCREMENT,
    delivery_date DATETIME NOT NULL
);

CREATE TABLE receive_note_details (
    receive_code INT,
    material_code INT,
    unit_price DOUBLE NOT NULL DEFAULT 0 CHECK (unit_price >= 0),
    receive_quantity INT NOT NULL DEFAULT 0 CHECK (receive_quantity >= 0),
    PRIMARY KEY (receive_code , material_code),
    FOREIGN KEY (receive_code)
        REFERENCES receive_note (receive_code),
    FOREIGN KEY (material_code)
        REFERENCES materials (materials_code)
);
