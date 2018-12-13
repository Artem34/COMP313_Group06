create database scheduledb;
create table users(
userId varchar(20),
password varchar(20),
role varchar(10),
empId int
);

create table employees
(
empId int identity primary key,
firstName varchar(50) not null,
lastName varchar(50),
dob date not null,
address varchar(100) not null,
email varchar(30) unique not null,
contactNum bigint unique not null,
userId varchar(20) unique,
dot date,
status varchar(20),
hours int
);

create table sites
(
siteId int identity primary key,
siteName varchar(20),
siteAddress varchar(100),
contactPerson varchar(30),
contactNum bigint
);

create table availability
(
id int identity primary key,
empId int not null,
weekday varchar(100),
startTime int,
endTime int,
startDate varchar(50), 
endDate varchar(50)
);

create table schedule(
scheduleId int identity primary key,
siteId int not null,
shiftDate date not null,
shiftDay varchar(10) not null,
startTime int not null,
endTime int not null,
empId int,
checkInStatus char(10),
checkInTime varchar(50),
checkOutStatus char(10), 
checkOutTime varchar(50),
weekNum int
);

create table SiteShifts(
id int identity primary key,
siteId int not null,
weekday varchar(5),
startTime int,
endTime int
);

create table navigationmenu(
menuText varchar(20),
menuLoc varchar(50),
role varchar(10)
);

create table empHours(
	empId int,
	tothours int not null,
	weekNum int,
	primary key(empId, weekNum),
	foreign key (empId) references employees(empId) 
);