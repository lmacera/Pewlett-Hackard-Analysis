Employee_Database_challenge.sql
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t
ON e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY 1;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
to_date

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT count(emp_no)
	emp_no,
	title
INTO retiring_titles
FROM retirement_titles
GROUP BY title
ORDER BY 1 DESC;

-- Creat mentorship table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees as e
JOIN dept_emp as de
ON e.emp_no=de.emp_no
JOIN titles as t
ON e.emp_no=t.emp_no
WHERE (de.to_date='9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


	




