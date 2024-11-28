create database office
use office
create table employee(empid int primary key,empname varchar(50) not null,department varchar(60) not null,contactno bigint unique,emailid varchar(100))
insert into employee values(101,'vinu','development',2543768910,'Aert.468@gmail.com')
insert into employee values(102,'subin','hr',1654278650,'Std.jhy765@gmail.com')
insert into employee values(103,'vipin','housing',1564387690,'Frewd167@gmail.com')

create table empsalary(empid int references employee(empid),salary int not null,permanant varchar(3))
insert into empsalary values(101,50000,'yes')
insert into empsalary values(102,12000,'yes')
insert into empsalary values(103,43000,'no')

select count(empid) as salarycount from empsalary where salary>50000 and permanent='yes'


