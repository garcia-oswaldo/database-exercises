use employees;
#
# SELECT first_name, last_name
# FROM employees
# ORDER BY last_name;
#
# SELECT *
# FROM employees.employees e;

SELECT *
FROM employees.employees e
ORDER BY e.hire_date DESC ;