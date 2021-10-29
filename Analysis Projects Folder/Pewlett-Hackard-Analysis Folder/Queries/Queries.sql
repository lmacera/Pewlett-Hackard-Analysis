Queries.sql
SELECT * FROM Departments
-- CREATE TABLE
CREATE TABLE  dept_manager(
	dep_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
FOREIGN KEY(dep_no) REFERENCES departments(dep_no),
	PRIMARY KEY (emp_no, dep_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	SELECT * FROM departments
	
	
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees
SELECT * FROM departmentS

-- CREATE TABLE
CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no),
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dep_no VARCHAR NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no),
	PRIMARY KEY (emp_no)
);

SELECT * FROM departments
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM salaries
SELECT * FROM titles

-- Determine Retirement Eligibility

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

SELECT count(last_name)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

SELECT count(last_name)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31'

SELECT count(last_name)
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31'

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT COUNT(last_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create a table from dada run
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info
