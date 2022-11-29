create table departments(
dept_no VARCHAR(10) NOT NULL Primary Key,
dept_name VARCHAR(30) NOT NULL);

select *
from departments

create table titles (
title_id VARCHAR(10) NOT NULL Primary Key,
title VARCHAR(30) NOT NULL);

select *
from titles

create table employees(
emp_no INTEGER NOT NULL Primary Key,
emp_title_id VARCHAR(10) NOT NULL,
Foreign Key(emp_title_id) REFERENCES titles(title_id),
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL
);

Select *
from employees

create table dept_manager(
dept_no VARCHAR(10) NOT NULL,
Foreign Key(dept_no) REFERENCES departments(dept_no),
emp_no INTEGER NOT NULL,
Foreign Key(emp_no)REFERENCES employees(emp_no)
);

select *
from dept_manager

create table dept_emp(
emp_no INTEGER NOT NULL,
Foreign Key(emp_no)REFERENCES employees(emp_no),
dept_no VARCHAR(10) NOT NULL,
Foreign Key(dept_no) REFERENCES departments(dept_no)
);

select * 
from dept_emp

create table salaries(
emp_no INTEGER NOT NULL,
Foreign Key(emp_no)REFERENCES employees(emp_no),
salary INTEGER Not NULL
);

select * 
from salaries