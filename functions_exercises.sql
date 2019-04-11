select now();

select concat('Anwar',' ','Lopez', ' ','DeLaRosa');

select concat_ws(' ','Anwardo','Elias','Lopez','De','La','Rosa');

select concat_ws('-','(210)','444','4444');

SELECT concat(first_name,' ',last_name) AS 'full_name' FROM employees order by full_name;

SELECT CURDATE();

SELECT CURRENT_TIME();

SELECT CONCAT(
           'Teaching people to code for ',
           (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 31536000,
           ' years'
         );

SELECT CONCAT(
           'Teaching people to code for ',
           (UNIX_TIMESTAMP() - UNIX_TIMESTAMP(birth_date)) / 31536000 AS 'Age'
           ,hire_date FROM employees WHERE birth_date > '197%'
         );

SELECT avg(salary) AS 'Average of Salaries' FROM salaries;

USE employees;

SELECT *
FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name DESC,first_name DESC;

SELECT *
FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees WHERE hire_date LIKE '199%-%';

SELECT *
FROM employees WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya');

SELECT *
FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT concat(first_name,' ',last_name) AS 'full_name'
FROM employees
WHERE last_name LIKE 'E%e';

SELECT *
FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT datediff(current_date,hire_date)
FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%-%'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


