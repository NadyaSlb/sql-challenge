CREATE TABLE titles (
title_id VARCHAR(25) PRIMARY KEY,
title VARCHAR(255));

CREATE TABLE employees (
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(25),
birth_date DATE,
first_name VARCHAR(255),
last_name VARCHAR(255),
sex VARCHAR(25),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

CREATE TABLE salaries (
emp_no INT PRIMARY KEY,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE departments (
dept_no VARCHAR(25) PRIMARY KEY,
dept_name VARCHAR(255));

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR(25),
CONSTRAINT dept_emp_pk PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

CREATE TABLE dept_manager (
dept_no VARCHAR(25),
emp_no INT,
CONSTRAINT dept_man_pk PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));