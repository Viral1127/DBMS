--EXTRA QUERIES OF AGGREGATE FUNCTIONS

SELECT * FROM PRODUCT_MASTER

--=============================================

--COUNT OF COMPANY WITHOUT DUPLICATION
SELECT COUNT(DISTINCT COMPANY) FROM PRODUCT_MASTER


--COUNT OF PRODUCT WHICH RATE IS GREATER THAN 20
SELECT COUNT (PRODUCT) FROM PRODUCT_MASTER
WHERE RATE > 20


--10% OF TOTAL COST,TOTAL COST IS GREATER THAN 300 AND COMPANY NAME ENDING WITH 2
SELECT COMPANY , SUM(COST) , (SUM(COST) - SUM(COST)*0.05) FROM PRODUCT_MASTER
WHERE COMPANY LIKE '%2'
GROUP BY COMPANY
HAVING (SUM(COST) - SUM(COST)*0.05) > 300


--MAXIMUM, MINIMUM , AVARAGE RATE OF EACH COMPONY
SELECT COMPANY ,AVG(RATE),MIN(RATE), MAX(RATE) FROM PRODUCT_MASTER
GROUP BY COMPANY


--DISPLAY TOTAL OF QTY WHICH IS GREATER THAN 10
SELECT COMPANY , SUM(QTY) FROM PRODUCT_MASTER
GROUP BY COMPANY
HAVING SUM(QTY) > 10


--COUNT PRODUCT AND TOTAL COST
SELECT COMPANY , COUNT(PRODUCT) , SUM(COST) FROM PRODUCT_MASTER
GROUP BY COMPANY


--COUNT PRODUCT OF EACH COMPANY AND QTY IS GREATER THAN 2
SELECT COMPANY , COUNT(PRODUCT) FROM PRODUCT_MASTER
WHERE QTY > 2
GROUP BY COMPANY
HAVING SUM(COST)>100


--UPDATE RATE TO 10% OF ORIGINAL RATE
SELECT PRODUCT , RATE , (RATE + (RATE*0.10)) , (RATE*0.10) FROM PRODUCT_MASTER
UPDATE PRODUCT_MASTER
SET RATE = (RATE + (RATE*0.10))


--COST 5% DISCOUNT
SELECT PRODUCT , COST , (COST - COST*0.05) FROM PRODUCT_MASTER




