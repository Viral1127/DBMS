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
select Department , min(salary) from Employee
group by Department

--8
select avg(salary) from Employee
group by Department

--9
select min(salary) from Employee
where city = 'Ahemdabad'

--10
select Department , sum(salary) from Employee
where city = 'rajkot'
group by Department
having sum(Salary) > 50000

--11
select count(EName) from Employee
where city = 'rajkot'

--12
select max(salary) as maximum , min(salary) as minimum , (max(Salary) - min(Salary)) as SAL_DIFFERENCE from Employee

--13
select count(EName) from Employee
where JoiningDate > 1-1-1991.
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

--16
select min(Salary) from Employee
where City = 'rajkot'

--17
select City , count(EName) from Employee
group by City

--18
select Department , min(salary) from Employee
group by Department

--19
select sum(salary) from Employee
group by city

--20
select Department , min(salary) as mini , max(salary) as maxy , sum(salary) as sumdi from Employee
group by Department


