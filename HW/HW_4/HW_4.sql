drop database if exists HW_4;
create database if not exists HW_4;
use HW_4;

create table Student
(
	Id int auto_increment primary key,
    FirstName nvarchar(255),
    LastName nvarchar(255),
    Gender bit,
    BirthDate date,
    Address nvarchar(255)
);

