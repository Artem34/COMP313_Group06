insert into employees(firstName, lastName, dob, address, email, contactNum, userId) values('harpreet', 'kaur', '1991-01-08','20 Mackinac Cr','kaur@gmail.com',9999999,'kaur');

insert into users(userId, password, role, empId) values('kaur','1234','admin',(select empId from employees where userId = 'kaur'));

insert into navigationmenu values('Add Availability','AddandUpdateAvailability.aspx', 'All');
insert into navigationmenu values('Add Site','AddSite.aspx', 'All');
insert into navigationmenu values('Add Employee','AddEmployeeByHR.aspx', 'All');
insert into navigationmenu values('Assign Schedule','AssignSchedule.aspx', 'All');
insert into navigationmenu values('View Schedule By Emp','ViewScheduleByE.aspx', 'All');
insert into navigationmenu values('View Schedule By Sup','ViewScheduleByS.aspx', 'All');