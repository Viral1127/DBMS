--1
select getdate() as Today_Date

--2
select getdate() + 365 as modified_date

--3
select convert(varchar(50) , cast('1994-5-5 12:00' as datetime) , 109)

--4
select convert(varchar(50) , cast('1995-1-3' as datetime) , 106)

--5
select convert(varchar(50) , cast('1996-1-4' as datetime) , 107)

--6
select datediff(month , '2008-12-31' , '2009-3-31')

--7
select datediff(year ,  '2010-9-14' , '2012-1-25')

--8
select datediff(hour , '2012-1-25 7:00' , '2012-1-26 10:30')

--9
select day('2016-5-12')
select	month('2016-5-12')
select year('2016-5-12')

--10
select dateadd(year , 5 , getdate())

--11
select dateadd(month , -2 , getdate())

--12
select datepart(month , getdate())
select datename(month , getdate())

--13
select EOMONTH(getdate())

--14
select dateadd(day , 30 , getdate())

--15
select datediff(month , '2004-11-27' , getdate())
select datediff(year , '2004-11-27' , getdate())
