--------------------------------------------------------
--1. list the details of each employee: emp. #, first name, last name, sex, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON
e.emp_no = s.emp_no

--------------------------------------------------------
--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date BETWEEN '1/1/1986' AND '12/31/1986'

--------------------------------------------------------
--3. List the manager of each department with the following information: dept #, department name, the manager's emp #, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d ON 
dm.dept_no = d.dept_no
INNER JOIN employees e ON
dm.emp_no = e.emp_no

--------------------------------------------------------
--4. List the department of each employee with the following information: emp #, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON 
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dept_no

-------------------------------------------------------
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'

--------------------------------------------------------
--6. List all employees in the Sales department, including their emp #, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON 
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

--------------------------------------------------------
--7. List all employees in the Sales and Development departments, including their emp #, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON 
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')

--------------------------------------------------------
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT (*)
FROM employees e
GROUP BY e.last_name
ORDER BY 2 DESC

