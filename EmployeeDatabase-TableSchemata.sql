/********
Data Engineering

Use the information you have to create a table schema for each of the six CSV files. 
Remember to specify data types, primary keys, foreign keys, and other constraints.
Import each CSV file into the corresponding SQL table.
*********/
DROP TABLE IF exists Employees ;
CREATE TABLE Employees (
	emp_no int primary key,
	birth_date date,
	first_name varchar(255),
	last_name varchar(255),
	gender char,
	hire_date DATE
);

DROP TABLE IF exists Departments ;
CREATE TABLE Departments (
	dept_no varchar(50) primary key,
	dept_name varchar(50)
);


DROP TABLE IF exists Dept_emp ;
CREATE TABLE Dept_emp (
	emp_no int,
	dept_no varchar(50),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

DROP TABLE IF exists Titles ;
CREATE TABLE Titles (
	emp_no int,
	title varchar(50),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


DROP TABLE IF exists Dept_manager ;
CREATE TABLE Dept_manager (
	dept_no varchar(50),
	emp_no int,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

DROP TABLE IF exists Salaries ;
CREATE TABLE Salaries (
	emp_no int,
	salary DEC,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
	
SELECT * from Employees;
SELECT * from Departments;	
SELECT * from Dept_emp;	
SELECT * from Titles;	
SELECT * from Dept_manager;	
SELECT * from Salaries;	






