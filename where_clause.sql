/*
where clause is used to filter out the records in a table based on the clause or condition using comparison operator
#-comparison operators
=,!= or <> , >,>= ,<, <= , between, in ,is not null  ,is null , like
Logical Opertators -> and or not

*/
SELECT * FROM employees WHERE age BETWEEN 25 AND 40;
SELECT * FROM employees WHERE department IN ('HR', 'Finance', 'IT');
SELECT * FROM employees WHERE name LIKE 'J%';  -- Names starting with 'J'
SELECT * FROM employees WHERE name LIKE '_ohn';  -- Names like 'John', 'John' is the only match.
SELECT * FROM employees WHERE manager_id IS NULL;
SELECT * FROM employees WHERE manager_id IS NOT NULL;
SELECT * FROM employees WHERE birth_date > '1999-11-04';    --default date is like year,month,day
SELECT * FROM employees WHERE birth_date > '1999-11-04' AND gender = 'Male';   -- it will check both conditions are true then return the records
SELECT * FROM employees WHERE birth_date > '1999-11-04' OR gender = 'Male';   -- it will check either conditions are true then return the records


-- For Under Query -> It will check strictly first conditions is true then only check the second condition because of PEMDAS rule 
SELECT * FROM employees WHERE  (birth_date > '1999-11-04' AND gender = 'Male') or age > 45;  

-- special characters %, _
-- % means anything and underscore(_) means specific value
SELECT * FROM employees  WHERE first_name LIKE 'jer%'  -- start with jer then anything 
SELECT * FROM employees  WHERE first_name LIKE '%jer%'  -- anything before jer and anything after jer 

-- we put 2 underscore means starts with j and then after it has  only two characters after j no more no less exact 2 characters afte j
--if we specify three underscore then after j 3charcter, that kind of name only return 
SELECT * FROM employees  WHERE first_name LIKE 'j__'  

--  combination of underscre and %
-- it will return the value as starts with j and should need exact three characters after that anything  
SELECT * FROM employees  WHERE first_name LIKE 'j__%'  
