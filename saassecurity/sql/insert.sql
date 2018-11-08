insert into employees(firstName, lastName, dob, address, email, contactNum, userId) values('harpreet', 'kaur', '1991-01-08','20 Mackinac Cr','kaur@gmail.com',9999999,'kaur');

insert into users(userId, password, role, empId) values('kaur','1234','admin',(select empId from employees where userId = 'kaur'));

insert into navigationmenu values('Add Availability','AddandUpdateAvailability.aspx', 'Employee');
insert into navigationmenu values('Add Site','AddSite.aspx', 'Admin');
insert into navigationmenu values('Add Employee','AddEmployeeByHR.aspx', 'Admin');
insert into navigationmenu values('Assign Schedule','AssignSchedule.aspx', 'Admin');
insert into navigationmenu values('My Schedule','ViewScheduleByE.aspx', 'Employee');
insert into navigationmenu values('View Schedules','ViewScheduleByS.aspx', 'Admin');
insert into navigationmenu values('View Sites','ViewSites.aspx', 'Admin');
insert into navigationmenu values('View Employees','ViewEmployee.aspx', 'Admin');
insert into navigationmenu values('My Profile','ViewUpdateProfile.aspx', 'Employee');
insert into navigationmenu values('View Availability','ViewEmpAvailability.aspx', 'Admin');