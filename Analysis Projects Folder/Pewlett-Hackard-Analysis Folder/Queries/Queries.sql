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


-- Drop retirement table to update columns

DROP TABLE retirement_info;

SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;

--Joining departments and dept_manager tables
SELECT d.dep_name,
	dm.emp_no,
	dm.from_date,
	dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dep_no=dm.dep_no;

-- Joining retirement_info and dept_emp tables
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
INTO current_emp
FROM retirement_info as ri LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date=('9999-01-01');

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dep_no
INTO employee_retirement
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dep_no
ORDER BY 2;

SELECT * FROM salaries
ORDER BY to_date DESC;

SELECT emp_no, 
	first_name, 
	last_name,
	gender
INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.gender,
	s.salary,
	de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no=s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND ( de.to_date ='9999-01-01');	

-- List of managers per department
SELECT dm.dep_no,
	d.dep_name,
	dm.emp_no,
	ce.last_name,
	ce.first_name,
	dm.from_date,
	dm.to_date
INTO manager_info
FROM dept_manager as dm
INNER JOIN departments as d
ON (dm.dep_no=d.dep_no)
INNER JOIN current_emp AS ce
ON (dm.emp_no=ce.emp_no);


SELECT ce.emp_no,
	ce.first_name,
	d.dep_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp as de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dep_no=d.dep_no);

SELECT * FROM retirement_info


SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de. dep_no,
	d.dep_name
INTO retirement_sales_development
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no=de.emp_no
JOIN departments as d
ON de.dep_no=d.dep_no
WHERE ( de.dep_no='d007' OR de.dep_no='d005');
SELECT * FROM retirement_sales_development
