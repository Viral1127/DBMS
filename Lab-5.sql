CREATE DATABASE STUDENT

SELECT * FROM STUDENT

--1
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE 'K%'

--2
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE '_____'

--3
SELECT FIRSTNAME , LASTNAME FROM STUDENT
WHERE CITY LIKE '_____a'

--4
SELECT * FROM STUDENT
WHERE LASTNAME LIKE '%tel'

--5
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'ha%t'

--6
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'k_y%'

--7
SELECT * FROM STUDENT
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____'

--8
SELECT * FROM STUDENT
WHERE LASTNAME LIKE '%jer%'

--9
SELECT * FROM STUDENT
WHERE CITY LIKE 'r%'
OR CITY LIKE 'b%'

--10
SELECT WEBSITE FROM STUDENT
WHERE WEBSITE IS NOT NULL

--11
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '[a-h]%'

--12
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '_[a,e,i,o,u]%'

--13
SELECT FIRSTNAME FROM STUDENT
WHERE CITY LIKE '%rod%'

--14
SELECT FIRSTNAME , LASTNAME  FROM STUDENT
WHERE WEBSITE LIKE 'bi%'

--15
SELECT CITY FROM STUDENT
WHERE LASTNAME LIKE '______'

--16
SELECT * FROM STUDENT
WHERE CITY LIKE '_____'
AND CITY NOT LIKE 'ba%' 

--17
SELECT * FROM STUDENT
WHERE DIVISION LIKE 'II%'

--18
SELECT FIRSTNAME FROM STUDENT
WHERE DIVISION LIKE '%bc%'

--19
SELECT STUID , CITY FROM STUDENT
WHERE DIVISION LIKE '______'
AND WEBSITE IS NOT NULL

--20
SELECT * FROM STUDENT
WHERE FIRSTNAME NOT LIKE '__[a,e,i,o,u]%'



--EXTRA

--1
SELECT WEBSITE FROM STUDENT 
WHERE WEBSITE LIKE '%ig%'

--2
SELECT * FROM STUDENT
WHERE CITY LIKE '%ra%'
AND DIVISION LIKE '%bc%'

--3
SELECT * FROM STUDENT
WHERE STUID LIKE '__5%'

--4
SELECT * FROM STUDENT
WHERE LASTNAME LIKE '%l'
