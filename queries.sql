--------------------------------------------------------
--1. list the details of each employee: emp. #, first name, last name, sex, and salary
-- inner join employees and salaries?

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
--3. List the manager of each department with the following information: dept # department name, the manager's emp # last name, first name.



--------------------------------------------------------
--4. List the department of each employee with the following information: emp #, last name, first name, and department name.



-------------------------------------------------------
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



--------------------------------------------------------
--6. List all employees in the Sales department, including their emp #, last name, first name, and department name.



--------------------------------------------------------
--7. List all employees in the Sales and Development departments, including their emp #, last name, first name, and department name.



--------------------------------------------------------
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


