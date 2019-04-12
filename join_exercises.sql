USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name AS Department_Name
FROM employees as e
       JOIN dept_manager as m
            ON m.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = m.dept_no
WHERE m.to_date >= current_date
ORDER BY Department_Name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name AS Department_Name
FROM employees as e
            JOIN dept_manager as m
                 ON m.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_no = m.dept_no
WHERE m.to_date >= current_date AND e.gender = 'F'
ORDER BY Department_Name;

SELECT t.emp_no AS Titles,count(1) as Count
FROM employees as e
            JOIN titles as t
                 ON t.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_emp = depart.emp_no
WHERE t.to_date >= current_date ;

SELECT *
FROM employees e
WHERE emp_no in (
  SELECT emp_no from titles where title = 'Engineer' and to_date > current_date
       );

SELECT first_name,gender
FROM employees e
WHERE emp_no in (
       SELECT emp_no
       from titles
       where title = 'Engineer'
       and to_date > current_date
);

SELECT first_name,gender
FROM employees e
 JOIN titles t on e.emp_no = t.emp_no
WHERE title = 'Engineer'
  and to_date > current_date
;


From
SHOW tables;
SELECT *
from users
where id in (
  select user_id
  from roles
  where name = 'Secretary');

SELECT count(*) from users where id in (select user_id from roles where name 'Secretary');


SELECT * from roles;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
       SELECT emp_no
       FROM dept_manager
)
LIMIT 10;
