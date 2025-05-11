-- HAVING
--only work after GROUP BY and for aggregate function 
--in where it will look in occupation column if any record has manager then it group by with occupation
--then it will give the avg salary of the groupbyed occupation then having means that filter avg salary > 50000
SELECT occupation,AVG(salary) FROM employee_salary 
    WHERE occupation LIKE '%manager%'
    GROUP BY occupation HAVING AVG(salary) > 50000

-- another example of having
select first_name,avg(age) from employee_demographics where first_name like "%s%" group by first_name having avg(age) > 25;
