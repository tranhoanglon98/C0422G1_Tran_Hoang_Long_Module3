DROP DATABASE IF EXISTS student_management;

CREATE DATABASE student_management;

USE student_management;

CREATE TABLE student (
    id_student INT,
    `name` VARCHAR(55),
    age INT,
    country VARCHAR(55)
);

ALTER TABLE student 
ADD PRIMARY KEY (id_student);

ALTER TABLE student 
CHANGE COLUMN id_student id_student INT AUTO_INCREMENT;

INSERT INTO student (`name`,age,country) 
VALUE ("long",32,"Việt Nam"),("Phú",23,"LÀo");

SeleCT*FROM STUdent;

creaTE TABlE CLAss(
id int,
`NAme` varcHAR(55)
);

CreaTE TABlE TEAcher(
id int,
`NAme` varcHAR(55),
AGE int,
COUntry varcHAR(55)
);