-- DROP DATABASE IF EXIT
DROP DATABASE IF EXISTS manage_student;
CREATE DATABASE IF NOT EXISTS manage_student;
USE manage_student;

DROP TABLE IF EXISTS student;
CREATE TABLE student
(
	Id				INT(3) AUTO_INCREMENT PRIMARY KEY,
    First_Name		NVARCHAR(20) NOT NULL,
    Last_Name		NVARCHAR(30) NOT NULL,
    Age				INT(3),
    Gender			NVARCHAR(5),
    School			NVARCHAR(40),
	Phone_Number	NVARCHAR(10),
	Email			NVARCHAR(30),
    Address			NVARCHAR(40)
);