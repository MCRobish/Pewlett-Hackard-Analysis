--create table of retirement titles
Select e.emp_no,
       e.first_name,
       e.last_name,
       ti.title,
       ti.from_date,
       ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no=ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Using Starter Code
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt 
ORDER BY rt.emp_no, rt.to_date DESC;

Select Count(ut.title),
             ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
Order BY COUNT(ut.emp_no) DESC;