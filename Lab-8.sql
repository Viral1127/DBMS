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
select count(distinct City) as City from Employee

--5
select city , count(*) from Employee
group by city

--6
select city from Employee
group by city
having count(*)>2

--7
select min(salary) from Employee
where city = 'rajkot'

--14
select Department , sum(salary) from Employee
group by Department
having sum(salary) > 35000
order by sum(Salary)

--15
select Department , sum(salary) from Employee
where city = 'rajkot'
group by Department
having sum(Salary) > 50000

