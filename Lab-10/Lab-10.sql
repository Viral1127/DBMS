-----------------------------JOINS-------------------------------

-----------------------------Student-----------------------------
Create table Student1
(
    Rno int,
    Name varchar (50),
    Branch varchar (50)
);

Insert into Student1 values(101, 'Raju' , 'CE');
Insert into Student1 values(102, 'Amit' , 'CE');
Insert into Student1 values(103, 'Sanjay' , 'ME');
Insert into Student1 values(104, 'Neha' , 'EC');
Insert into Student1 values(105, 'Meera' , 'EE');
Insert into Student1 values(106, 'Mahesh' , 'ME');

-----------------------------Result-----------------------------
Create table Result
(
    RNo int,
    SPI Decimal (4,2)
);

Insert into Result values(101, 8.8);
Insert into Result values(102, 9.2);
Insert into Result values(103, 7.6);
Insert into Result values(104, 8.2);
Insert into Result values(105, 7.0);
Insert into Result values(107, 8.9);

-----------------------------Employe-----------------------------
Create table Employe
(
    EmployeNo varchar (50),
    Name varchar (50),
    ManagerNo varchar (50)
);

Insert into Employe values('E01', 'Tarun' , NULL);
Insert into Employe values('E02', 'Rohan' , 'E02');
Insert into Employe values('E03', 'Priya' , 'E01');
Insert into Employe values('E04', 'Milan' , 'E03');
Insert into Employe values('E05', 'Jay'   , 'E01');
Insert into Employe values('E06', 'Anjana' , 'E04');





----------------------Queries----------------------------

--1
select 
	*
from Student1 , Result


--2
select 
	Student1.Rno,
	Student1.Name,
	Student1.Branch,
	Result.SPI
from Student1 
left outer join Result
on student1.Rno = Result.RNo
where student1.Branch = 'CE'


--3
select 
	Student1.Rno,
	Student1.Name,
	Student1.Branch,
	Result.SPI
from Student1
left outer join Result
on Student1.Rno = Result.Rno
where student1.Branch <> 'EC'


--4
select 
	Student1.Branch,
	avg(Result.SPI)
from Student1
left outer join Result
on Student1.Rno = Result.Rno
group by Branch

--5
select 
	Student1.Branch,
	avg(Result.SPI)
from Student1
left outer join Result
on Student1.Rno = Result.Rno
group by Student1.Branch
order by avg(Result.SPI)

--6
select 
	Student1.Branch,
	avg(Result.SPI)
from Student1
left outer join Result
on Student1.Rno = Result.Rno
where Branch = 'CE' or Branch = 'ME'
group by Branch

--7
select 
*
from Student1 
left outer join Result
on student1.Rno = Result.RNo

--8
select 
*
from Student1 
right outer join Result
on student1.Rno = Result.RNo

--9
select 
*
from Student1 
full outer join Result
on student1.Rno = Result.RNo

--10





-----------------------------Village-----------------------------
Create table Village 
(
    VillageID int, 
    VillageName varchar (50), 
    CityID int,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

Insert into Village values(101, 'Raiya', 1);
Insert into Village values(102, 'Madhapar', 1);
Insert into Village values(103, 'Dodka', 3);
Insert into Village values(104, 'Falla', 4);
Insert into Village values(105, 'Bhesan', 5);
Insert into Village values(106, 'Dhoraji', 5);










