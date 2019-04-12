# index exercise
USE codeup_test_db;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (name,artist);

SELECT * FROM albums;
INSERT INTO albums(name, artist,release_year)
VALUES ('Thriller','Michael Jackson', 2002);


# USE employees;
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE emp_no BETWEEN 10026 AND 10082;
