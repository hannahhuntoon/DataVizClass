--Create tables

--Drop existing employees table
DROP TABLE IF EXISTS employees;
--Create new employees table
CREATE TABLE employees
(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

--Drop existing departments table
DROP TABLE IF EXISTS departments;
--Create new departments table 
CREATE TABLE departments
(
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

--Drop existing dept_emp table
DROP TABLE IF EXISTS dept_emp;
--Create new dept_emp table
CREATE TABLE dept_emp
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

--Drop existing dept_manager table
DROP TABLE IF EXISTS dept_manager;
--Create new dept_manager table
CREATE TABLE dept_manager
(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

--Drop existing salaries table
DROP TABLE IF EXISTS salaries;
--Create new salaries table 
CREATE TABLE salaries
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL,
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);

--Drop existing titles table
DROP TABLE IF EXISTS titles;
--Create new titles table
CREATE TABLE titles
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR NOT NULL,
	from_date VARCHAR NOT NULL,
	to_date VARCHAR NOT NULL
);