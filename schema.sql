CREATE DATABASE ecole;
use ecole;

CREATE TABLE year(
     id int(10) unsigned auto_increment not null,
     label varchar(255) not null,
     primary key (id));


CREATE TABLE module(
     id int(10) unsigned auto_increment not null,
     name varchar(255) not null,
     `year` int(10),
     primary key(id));


CREATE TABLE student(
     id int(10) unsigned auto_increment not null,
     firstname varchar(255) not null,
     lastname varchar(255) not null,
     primary key(id));


CREATE TABLE enroiment(
id_student int(10) unsigned not null,
id_year int(10) unsigned not null,
primary key(id_student,id_year),
`from` DATETIME not null,
`to` DATETIME,
CONSTRAINT fk_student_enroinment FOREIGN KEY (id_student) REFERENCES student (id),
CONSTRAINT fk_year_enroinment FOREIGN KEY (id_year) REFERENCES year (id));

CREATE TABLE assessment(
id_student int(10) unsigned not null,
id_module int(10) unsigned not null,
attempted DATETIME not null,
primary key(id_student,id_module,attempted),
passed DATETIME,
grade int(10),
CONSTRAINT fk_student_assessment FOREIGN KEY (id_student) REFERENCES student (id),
CONSTRAINT fk_module_assessment FOREIGN KEY (id_module) REFERENCES module (id));