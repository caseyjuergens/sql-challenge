--------------------------------------------------------
--1. list the details of each employee: emp. #, first name, last name, sex, and salary
-- inner join employees and salaries?

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON
e.emp_no = s.emp_no
