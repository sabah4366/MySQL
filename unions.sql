--UNIONS
--allows you to combine rows together from seperate table or from the same table
--under code will get random datas so this is not a good form
--By default UNION  takes unique values only
SELECT age,gender 
FROM employee_demographics
UNION
SELECT first_name,last_name 
FROM employee_salary;

--if you wat all data from both tables (means not remove duplicated values ) then use UNION ALL
SELECT age,gender 
FROM employee_demographics
UNION ALL
SELECT first_name,last_name 
FROM employee_salary;


--LARGE QUERY
SELECT first_name ,last_name, "Old Man" as label
FROM employee_demographics
WHERE age > 25 and gender =  'Male'
UNION
SELECT first_name,last_name ,"Old Lady" 
FROM employee_demographics
WHERE age > 25 and gender = 'Female'
UNION
SELECT first_name,last_name ,"Highly Paid"
FROM employee_salary
where salary > 70000;