--List details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary
FROM salaries AS sal
INNER JOIN employees AS emp ON
emp.emp_no = sal.emp_no;

--List employees who were hired in 1986.
SELECT * FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--List manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dep.dept_no, dep.dept_name, man.emp_no, emp.last_name, emp.first_name, man.from_date, man.to_date
FROM departments AS dep
INNER JOIN dept_manager AS man ON
man.dept_no = dep.dept_no
JOIN employees AS emp ON
emp.emp_no = man.emp_no;

--List  department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de ON
emp.emp_no = de.emp_no
INNER JOIN departments AS dep ON
dep.dept_no = de.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de ON
emp.emp_no = de.emp_no
INNER JOIN departments AS dep ON
dep.dept_no = de.dept_no
WHERE dep.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de ON
emp.emp_no = de.emp_no
INNER JOIN departments AS dep ON
dep.dept_no = de.dept_no
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


--Epilogue 
SELECT emp_no, first_name, last_name from employees where emp_no ='499942'