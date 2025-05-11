-- Joins allows you combine two tables or more that two tables if they have common column
-- Types -> Inner Joins ,Outer Joins and Self Joins 
--INNER JOINS
-----------------------------------------------------------------------------------------------------
--INNER JOINS : goings to return rows that are the same in both columns from the both tables
--By Default Joins represcent inner join
--must check if any column using the if that column is prescent in both table then you should use tablename or alias of the table name plus column name
SELECT *
FROM employee_demographics 
INNER JOIN employee_salary
   ON employee_demographics.employee_id = employee_salary.employee_id;

--or you can use aliases for a good naming convention
SELECT *
FROM employee_demographics as dem 
INNER JOIN employee_salary as sal
   ON dem.employee_id = sal.employee_id;

--also you can select perticular column  

SELECT dem.employee_id,age,occupation
FROM employee_demographics as dem 
INNER JOIN employee_salary as sal
   ON dem.employee_id = sal.employee_id;


--OUTER JOINS
-----------------------------------------------------------------------------------------------------
--OUTER JOIN has left outer join and right outer join 
--Left Outer Join : going to take everything from the left table and  matches  from the right table
--Right Outer Join :  going to take everything from the right table but only matches fron left table not mnatches records are getting null values
--from table if left table and join table is right table
--right outer join will take all records from right table and all matches from left table and not matches records takes null


SELECT *
FROM employee_demographics as dem 
LEFT JOIN employee_salary as sal
   ON dem.employee_id = sal.employee_id;



SELECT *
FROM employee_demographics as dem 
RIGHT JOIN employee_salary as sal
   ON dem.employee_id = sal.employee_id;

--SELF JOIN
------------------------------------------------------------------------------------------------------
--its a table where you tie table  to itself
SELECT *
FROM employee_demographics as emp1 
JOIN employee_demographics as emp2
   ON emp1.employee_id + 1 = emp2.employee_id;


--JOINING MULTIPLE TABLES TOGETHER
SELECT *
FROM employee_demographics as emd
INNER JOIN employee_salary as sal
    ON emd.employee_id  = sal.employee_id
INNER JOIN parks_departments as pd
    ON sal.dept_id = pd.department_id;
