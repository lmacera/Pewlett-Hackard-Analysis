# Pewlett-Hackard-Analysis
## Project Overview
Bobby and other Pewlett-Hackard managers have asked our team to determine the following items with regards to the “Silver-Tsunami” or the large number of employees reaching retirement age at Pewlett-Hackard. Pewlett-Hackard wants:
1.	The number of retiring employees per title.
2.	The number of employees who are eligible to participate in a mentorship program. 
## Resources
- Data Source: titles.csv, dept_emp.csv, dept_manager.csv, departments.csv, salaries.csv, employees.csv
- Software: SQL
## Results 
From our analysis we created 4 dataframes of employee retirement and mentorship data. From these dataframes we found that there are approximately 90K employees reaching retirement age and approkimatly1.5K of employees eligible for a mentorship program.
### Retirement by Title Analysis
From the below dataframe image we can see:
-	90,398 employees are retiring.
-	Most of the retiring employees are high level Engineers and Staff. 
-	Approximately 64% of the retiaries are either Senior Engineers or Senior staff.
-	There are not enough employees to cover the number of retirees.

![ Fig1.png]( https://github.com/lmacera/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Employee_Database_challenge/Fig%201.PNG )
### Retirement by Department Analysis
From further analysis, shown in the below image, we can see:
-	From the company’s 9 departments, most of the Senior Engineers and Staff are from the following departments:

o	D004: Production
o	D005: Development
o	D007: Sales

![ Fig2.png](https://github.com/lmacera/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Employee_Database_challenge/Fig%202.PNG )
### Mentorship by Title Analysis
From the below dataframe image we can see:
-	1,549 employees qualified, retirement-ready mentors.
-	As with our retirement by title analysis, most of the mentorship employees are high level Engineers and Staff.

![ Fig3.png](https://github.com/lmacera/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Employee_Database_challenge/Fig%203.PNG )
### Mentorship by Department Analysis
From further analysis, shown in the below image, we can see:
-	From the company’s 7 departments, most of the Senior Engineers and Staff are from the following departments:

o	D004: Production
o	D005: Development
o	D007: Sales
o	D001: Marketing

![ Fig4.png](https://github.com/lmacera/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Employee_Database_challenge/Fig%204.PNG )
##Summary
In summary Pewlett-Hackard is going to see 90,398 employees reaching retirement age and only 1,549 are eligible mentors. Unfortunately, from this analysis there not enough qualified, retirement-ready employees to mentor the next generation of Pewlett Hackard employees. In the above analysis we combined our emp_dep table with our retiring _titles table and mentorship _eligibility table and saw the departments most affected are Production, Development, and Sales.


