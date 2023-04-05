Create table City 
(
    CityID int NOT NULL Primary key, 
    CityName varchar (50) NOT NULL UNIQUE, 
    Pincode varchar (6), 
    Remarks varchar (250)
);

Insert into City values(1, 'Rajkot', '360005', 'Good');
Insert into City values(2, 'Surat', '335009', 'Very Good');
Insert into City values(3, 'Baroda', '390001', 'Awesome');
Insert into City values(4, 'Jamnagar', '361003', 'Smart');
Insert into City values(5, 'Junagadh', '362229', 'Historic');
Insert into City values(6, 'Morbi', '363641', 'Ceramic');

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



----------------------------Queries------------------------------
--1
select 
	City.CityName,
	Village.VillageName
from Village
left outer join City
on City.CityID = Village.CityID
where CityName = 'Rajkot'

--2
select 
	City.CityName,
	Village.VillageName,
	City.Pincode
from Village
left outer join City
on City.CityID = Village.CityID

--3
select 
	City.CityName,
	Village.VillageName,
	City.Pincode
from Village
left outer join City
on City.CityID = Village.CityID