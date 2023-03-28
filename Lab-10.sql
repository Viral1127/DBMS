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