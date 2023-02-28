select * from Employee

--1
select max(Salary) as Maximum , min(Salary) as Minimum , sum(Salary) as Total_Sal , avg(Salary) as Average_Sal from Employee

--2
select count(EName) as number from Employee

--3
select Department , max(Salary) from Employee
where Department like 'IT'
group by Department

--4
select count(City) as City from Employee

