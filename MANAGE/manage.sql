DROP DATABASE IF EXISTS student_demo_database;
CREATE DATABASE IF NOT EXISTS student_demo_database;
USE student_demo_database;

DROP TABLE IF EXISTS student;
CREATE TABLE student (
	id  int(3) NOT NULL AUTO_INCREMENT,
	first_name varchar(120) NOT NULL,
    last_name varchar(120) NOT NULL,
	email varchar(220) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO `student` VALUES 
	(1,'Hung','Manh','hungnm@vti.com.vn'),
	(2,'Viet Anh','Nguyen','vanguyen@vti.com.vn'),
	(3,'tan','Le','tanle@vti.com.vn'),
	(4,'thao','cao','caothao@vti.com.vn'),
	(5,'huong','thu','thuhuong@vti.com.vn');