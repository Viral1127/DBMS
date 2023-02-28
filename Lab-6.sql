--lab 6

--String Function

--1
select len(null)
select len(' hello ')
select len('Blank')

--2
select upper('viral')
select lower('VIRAL')

--3
select substring('viral',1,3) 

--4
select substring('viral chauhan',3,8)

--5
select replace('abc123efg','123','XYZ')
select replace( 'abcabcabc','c','5')

--6
select ascii('a') AS a
select ascii('A') as A
select ascii('z') as z
select ascii('Z') as Z
select ascii(0) as v0
select ascii(9) as v9

--7
select char(97) as v97 , char(65) as v65 , char(122) as v122 , char(90) as v90 , char(48) as v48 , char(57) as v57

--8
select ltrim('hello world     ')

--9
select rtrim('    hello world')

--10
select substring('SQL server',1,4) + substring('SQL server',6,5)

--11
select cast(1234.56 as int)

--12
select cast(10.58 as int)

--13
select space(10) + 'viral'

--14
select 'viral' + 'chauhan'
select concat('viral' , 'chauhan')

--15
select reverse('darshan')

--16
select REPLICATE('viral',3)

--17
select stuff('viralchauhan',1,3,'html')

--18
select coalesce(null,'vc',null)

--19
select ISnumeric('vc')

--20
select CHARINDEX('t' , 'customer')