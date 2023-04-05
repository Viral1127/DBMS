-------------SET OPERATORS------------------

------------------computer------------------

Create Table Computer
(
    RollNo Int,
    Name varchar (50)
);

insert into Computer values (101, 'Ajay');
insert into Computer values (109, 'Haresh');
insert into Computer values (115, 'Manish');


-------------------eletrical-------------------

Create Table Eletrical
(
    RollNo Int,
    Name varchar (50)
);

insert into Eletrical values (105, 'Ajay');
insert into Eletrical values (107, 'Mahesh');
insert into Eletrical values (115, 'Manish');

select * from Computer
select * from Eletrical



----------------Queries-----------------------------

--1
select name from Computer union select name from Eletrical

--2
select name from Computer union all select name from Eletrical

--3
select name from Computer intersect select name from Eletrical

--4
select name from Computer except select name from Eletrical

--5
select name from Eletrical except select name from Computer

--6
select * from Computer union select * from Eletrical

--7
select * from Computer intersect select * from Eletrical


------------------SELECT INTO---------------------------

------------------Cricket-------------------------------

Create Table Cricket
(
    Name varchar (50),
    City varchar (50),
    Age Int
);

insert into Cricket values ('Sachin Tendulkar', 'Mumbai' , 30);
insert into Cricket values ('Rahul Dravid' , 'Bombay' , 35);
insert into Cricket values ('M. S. Dhoni' , 'Jharkhand' , 31);
insert into Cricket values ('Suresh Raina' , 'Gujarat' , 30);


select * from Cricket

--------------------------Queries---------------------------------

--1
select * into Worldcup from Cricket

--2
select Name , City into T20 from Cricket
where 1=2

--3
select * into IPL from Cricket
where 2=1

--4
insert into IPL(name , city , age) 
select name ,city,age from Cricket
where name like '_A_____%'

--5
delete from IPL

--6
delete from Cricket
where city = 'Jharkhand'

--7
sp_rename  'IPL' , 'IPL2018'

--8
drop table T20

select * from IPL
