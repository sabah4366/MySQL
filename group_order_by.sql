-- GROUP BY
-- its going to group together rows that have the same values in the specified column or columns that actually grouping
-- once we group together we can run aggregate function on those rows

--it will get error because if you are selecting the non aggregated column select then you should group by that column 
-- first_name we cant aggregate so we cannot group by because we can group by only for aggregated columns otherwise you should use the same column in groupby also 
SELECT first_name FROM empoloyees GROUP BY gender;

--this will work
SELECT gender FROM empoloyees GROUP BY gender;

--you can get the average age of genders
SELECT gender ,avg(age) FROM empoloyees GROUP BY 'gender';

--groupby multiple columns 
SELECT occupation,salary FROM employee_salary GROUP BY occupation,salary;

--also you can use multiple aggregate function for columns
SELECT gender ,avg(age),min(age),max(age),count(age) FROM empoloyees GROUP BY 'gender';


--ORDER BY
--it will get ascending order of gender because by default is acsending order
SELECT * FROM empoloyee_demographics ORDER BY gender;

--first it will order gender then in that gender it will order age
SELECT * FROM empoloyee_demographics ORDER BY gender,age;

--you can order by decsending using DESC
SELECT * FROM empoloyee_demographics ORDER BY gender DESC;

