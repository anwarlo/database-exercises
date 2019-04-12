USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
 );

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);


SELECT title
FROM titles
WHERE  emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

