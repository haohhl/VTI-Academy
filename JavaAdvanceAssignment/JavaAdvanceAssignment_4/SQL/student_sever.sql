DROP DATABASE IF EXISTS students_sever;
CREATE DATABASE students_sever;
USE students_sever;

CREATE TABLE STUDENT(
	ID INT UNSIGNED AUTO_INCREMENT,
    `NAME` VARCHAR(30),
    AGE SMALLINT UNSIGNED,
    GENDER ENUM('Male', 'Female', 'Unknow'),
    SCHOOL VARCHAR(70),
    PHONENUMBER CHAR(10),
    ADDRESS VARCHAR(30),
    PRIMARY KEY (ID)
);

SELECT * FROM STUDENT;

SELECT *
FROM
    STUDENT
WHERE
    `NAME` LIKE '%%'
        OR `AGE` LIKE '%%'
        OR `GENDER` LIKE '%%'
        OR `SCHOOL` LIKE '%%'
        OR `PHONENUMBER` LIKE '%%'
        OR `ADDRESS` LIKE '%%';