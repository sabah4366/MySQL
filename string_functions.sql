--String Functions
--LENGTH
select first_name,LENGTH(first_name)
FROM employee_demographics;

--UPPER
select first_name,UPPER(first_name)
FROM employee_demographics;

--LOWER
select first_name,LOWER(first_name)
FROM employee_demographics;

--TRIM -REMOVES WHITE SPACES FROM BOTH SIDE
select first_name,TRIM(first_name)
FROM employee_demographics;

--LTRIM -REMOVES WHITE SPACES FROM LEFT SIDE
select first_name,LTRIM(first_name)
FROM employee_demographics;

--RTRIM -REMOVES WHITE SPACES FROM RIGHT SIDE
SELECT first_name,RTRIM(first_name)
FROM employee_demographics;

--LEFT :LEFT(first_name,4) -get first 4 characters of first__name
SELECT first_name ,LEFT(first_name,4)
FROM employee_demographics;

--RIGTH :RIGHT(first_name,4) -get LAST 4 characters of first__name
SELECT first_name ,RIGHT(first_name,4)
FROM employee_demographics;

--SUBSTRING - SUBSTRING(first_name,3,4) -get the 4 first_name letters from the position of 3
SELECT first_name ,SUBSTRING(first_name,3,4)
FROM employee_demographics;

--REPLACE 
SELECT first_name ,REPLACE(first_name,'a','b')
FROM employee_demographics;

--LOCATE - will give you the index number of where its located 
SELECT LOCATE('a','means')

--CONCAT -Will combine multiple columns
select first_name ,last_name ,
CONCAT(first_name,' ',last_name) as full_name
From employee_demographics;