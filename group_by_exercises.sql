USE employees;

SELECT DISTINCT title from titles;

SHOW CREATE TABLE titles;

CREATE TABLE authors (
                       id INT NOT NULL AUTO_INCREMENT,
                       first_name VARCHAR(100) NOT NULL,
                       last_name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id),
                       UNIQUE (first_name, last_name)
);

SHOW TABLES;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
describe salaries;
DESCRIBE titles;

