create database petrolium
use petrolium
create table petrol(distributorid int,distributorname varchar(50),buyrate decimal,sellrate decimal,volumein int,volumeout int,year varchar(4))
insert into petrol values(101,'hp',540000,600000,54,50,2021)
insert into petrol values(102,'bharath',600000,670000,60,61,2021)
insert into petrol values(104,'reliance',550000,610000,70,66,2022)
insert into petrol values(106,'hp',600000,670000,64,61,2022)
insert into petrol values(105,'bharath',550000,580000,66,59,2022)

select distributorname from petrol
select upper(distributorname) from petrol
select substring(distributorname,1,3) from petrol
select * from petrol order by distributorname asc
select * from petrol where distributorname in ('hindusthan','bharath')
select * from petrol where distributorname like '%h%'
select sum(volumeout) as totalvolumesold from petrol group by distributorname
select * from petrol where(year) between 2020 and 2022
select count(distributorname) as totalcount from petrol group by distributorname
