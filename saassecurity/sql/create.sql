﻿create table users(
userId varchar(20),
password varchar(20),
role varchar(10)
)

create table employees
(
empId int identity primary key,
firstName varchar(50) not null,
lastName varchar(50),
dob date not null,
address varchar(100) not null,
email varchar(30) unique not null,
contactNum int unique not null,
userId varchar(20) unique,
dot date,
status char(2)
)

create table sites
(
siteId int identity primary key,
siteName varchar(20),
siteAddress varchar(100),
contactPerson varchar(30),
contactNum int,
shiftDays varchar(100),
shiftStart int,
shiftEnd int
)

create table availability
(
empId int not null primary key,
days varchar(100),
startTime int,
endTime int
)

create table schedule(
scheduleId int identity primary key,
siteId int not null,
shiftDate date not null,
shiftDay varchar(10) not null,
startTime int not null,
endTime int not null,
empId int not null,
checkInStatus char(10)
)