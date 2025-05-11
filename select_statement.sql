-- creating database
create database main_db;

-- Using that database
use main_db;

--creating a table with heading and their datatype
create table employee_demographics( id int auto_increment primary key,
    -> first_name varchar(50),
    -> last_name varchar(50),
    -> gender enum("Male","Female","Other"),
    -> age int,
    -> department varchar(50),
    -> hire_date date);

--showing tables in that database
show tables;

--inserting multiuple values into that table
insert into employee_demographics (first_name,last_name,gender,age,department,hire_date) values
    -> ('John', 'Doe', 'Male', 28, 'Finance', '2020-05-01'),
    -> ('Jane', 'Smith', 'Female', 32, 'Marketing', '2019-03-15'),
    -> ('Mike', 'Brown', 'Male', 45, 'IT', '2015-06-10'),
    -> ('Emily', 'Davis', 'Female', 26, 'HR', '2021-01-12'),
    -> ('Chris', 'Wilson', 'Other', 38, 'Sales', '2018-07-23');

--showing all records in that table
select * from employee_demographics;

--if you are not using databases you can use the database name to call tables
select * from main_db.employee_demographics;

--also you can call the column seperatedly (single column or multiple column)
select first_name,birth_date from main_db.employee_demographics;

--you can tempororly create a column for the calculations ->(age + 10) -> will give you calculated columns as age plus 10 
select age,age + 10 from employee_demographics;

/*
 distinct its going to select unique values withina a column
 means if there is a same values in a column then if we are using distinct before the column_name 
 then it will show only unique values only
 eg:if gender column name because there is multiple female and male so when use diustinct it will show only one female and one male in that column
*/

select DISTINCT gender FROM employee_demographics;
