schema.sql
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
	dep_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no),
	PRIMARY KEY (emp_no)
);
CREATE TABLE Departments (
	dep_no VARCHAR(4) NOT NULL,
	dep_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dep_no ),
	UNIQUE(dep_name)
);
CREATE TABLE EMPLOYEES (
		emp_no INT NOT NULL,
		birth_date DATE NOT NULL,
		first_name VARCHAR NOT NULL,
		last_name VARCHAR NOT NULL,
     	gender VARCHAR NOT NULL,
     	hire_date DATE NOT NULL,
     	PRIMARY KEY (emp_no)
);