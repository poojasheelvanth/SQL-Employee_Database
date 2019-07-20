
/**************
Data Analysis
**************/

/*List the following details of each employee: 
employee number, last name, first name, gender, and salary.
*/

Select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.salary 
from Employees INNER JOIN Salaries 
ON Employees.emp_no= Salaries.emp_no;


----List employees who were hired in 1986.
Select * from Employees where date_trunc('year', hire_date) = '1986-01-01';

/***********************
List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
**********************/

SELECT Dept_manager.dept_no, Departments.dept_name, Dept_manager.emp_no, Employees.last_name, 
Employees.first_name, Dept_manager.from_date, Dept_manager.to_date
from Dept_manager JOIN Departments 
ON Dept_manager.dept_no = Departments.dept_no
JOIN Employees
ON Dept_manager.emp_no=Employees.emp_no;


/**********************
List the department of each employee with the following information: 
employee number, last name, first name, and department name.
**********************/

SELECT Dept_emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_emp JOIN Employees
ON Dept_emp.emp_no = Employees.emp_no
JOIN Departments
ON Dept_emp.dept_no = Departments.dept_no;

/*****************
List all employees whose first name is "Hercules" and last names begin with "B."
******************/

SELECT * from Employees where first_name='Hercules' AND last_name like 'B%';

/*****************
List all employees in the Sales department, 
including their employee number, last name, first name, and department name.
******************/
SELECT Dept_emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_emp JOIN Employees
ON Dept_emp.emp_no = Employees.emp_no
JOIN Departments
ON Dept_emp.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales';


/*******************
List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name.
*********************/
SELECT Dept_emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_emp JOIN Employees
ON Dept_emp.emp_no = Employees.emp_no
JOIN Departments
ON Dept_emp.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales' OR Departments.dept_name ='Development';



/***********************
In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.
*************************/
SELECT count(last_name) as "Frequency Count of last_name", last_name from Employees
group by last_name
order by "Frequency Count of last_name" DESC;



