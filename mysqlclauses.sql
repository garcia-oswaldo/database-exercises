use employees;

-- pulls all records that have tim in it due to %--%
select * from employees where first_name like '%tim%';

-- Alias used to shorten the name. employees.employees ends up as e
select * from employees.employees as e where e.last_name like '%a%u%'
-- returns records that starts with a v
select * from employees.employees as e where e.last_name like 'v%'
-- any record that ends with an e
select * from employees.employees as e where e.last_name like '%e'
-- selects any record that has a last name that contains the seq of "gh" regardless
-- if it starts or ends with it.
select * from employees.employees as e where e.last_name like '%gh%'

select birth_date from employees.employees e where  birth_date between
'1964-06-02'and '1964-06-05';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
-- Or operator to add inline returns
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name = 'Herber' or last_name ='Dredge';

# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE last_name = 'Herber' or last_name ='Dredge';

SELECT emp_no, title
FROM titles
WHERE to_date IS NULL;