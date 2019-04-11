USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10 ;

SELECT first_name,last_name
FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%-%'
ORDER BY birth_date, hire_date DESC
LIMIT 5;


SELECT first_name,last_name
FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%-%'
ORDER BY birth_date, hire_date DESC
LIMIT 5
OFFSET 45;

# SELECT first_name,last_name
# FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%-%'
# ORDER BY birth_date, hire_date DESC
# LIMIT 5 OFFSET 10-1 * 5; Example of math used to get offset, Page minus 1 times Offset of 5.


SELECT *
FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


