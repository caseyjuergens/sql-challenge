CREATE TABLE titles(
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (20) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR (6) NOT NULL,
	dept_name VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR (6) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (6) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

