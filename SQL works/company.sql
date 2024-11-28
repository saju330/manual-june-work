create database company
use company
create table worker(workerid int,first_name varchar(50),last_name varchar(50),salary decimal,joining_date datetime,department varchar(50))
insert into worker values(001,'monika','arora',100000,'2021-02-20 09:00:00','hr')
insert into worker values(002,'niharika','verma',80000,'2021-09-11 09:00:00','admin')
insert into worker values(003,'vishal','singhal',300000,'2021-02-20 09:00:00','hr')
insert into worker values(004,'amitabh','singh',500000,'2021-02-20 09:00:00','admin')
insert into worker values(005,'vivek','bhati',500000,'2021-06-11 09:00:00','admin')
insert into worker values(006,'vipul','diwan',200000,'2021-06-11 09:00:00','account')
insert into worker values(007,'satish','kumar',75000,'2021-01-20 09:00:00','account')
insert into worker values(008,'geetika','chauhan',90000,'2021-04-11 09:00:00','admin')


create table bonus(worker_ref_id int,bonus_date datetime,bonus_amount decimal)
insert into bonus values(1,'2023-02-20 00:00:00',5000)
insert into bonus values(2,'2023-06-11 00:00:00',3000)
insert into bonus values(3,'2023-02-20 00:00:00',4000)
insert into bonus values(1,'2023-02-20 00:00:00',4500)
insert into bonus values(2,'2023-06-11 00:00:00',3500)

select upper(first_name) from worker
select distinct (department) from worker
select substring(first_name,1,3) from worker
select rtrim(first_name) from worker
select distinct department,len(department) as departmentnamelength from worker
select replace(first_name,'a','A') from worker
select concat(first_name,'',last_name) as complete_name from worker
select * from worker order by first_name asc
select * from worker where salary between 100000 and 500000
select * from  worker where year(joining_date) = 2021
select count(*) as employee_count from worker where department = 'admin'
select department,count(workerid)as no_of_workers from worker group by department order by no_of_workers desc
select sysdatetime() as currenttime
select * from worker where first_name in ('vipul','satish')
select department,sum(salary) as 'total salary' from worker group by department
select department,count(*) as no_of_people from worker group by department having count(*) < 5
