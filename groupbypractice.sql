use employees
SELECT DISTINCT first_name
FROM employees;

SELECT first_name
FROM employees
GROUP BY first_name;

# this does not work
# SELECT first_name
# FROM employees
# GROUP BY first_name DESC;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;

#aggregate function works across all rows

# give a count of all employees
SELECT COUNT(*) FROM employees;

# employees with no a in their name
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';
# quantity of certain names
SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;
#shows how many employees were hired in 10 days
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;