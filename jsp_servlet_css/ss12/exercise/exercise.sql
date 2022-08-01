DROP DATABASE IF EXISTS exercise;

CREATE DATABASE exercise;

USE exercise;


CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120)
);

INSERT INTO users(name, email, country) VALUES('Minh','minh@codegym.vn','Viet Nam');
INSERT INTO users(name, email, country) VALUES('Kante','kante@che.uk','Kenia');
