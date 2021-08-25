use employees;

# 1) Using the terminal create a script and save it as functions_exercises.sql.
# 2) Find all employees whose names start and end with 'E'. Use concat() to combine their
# first and last name together
# as a single column in your results.
select *
from employees.employees e
where e.first_name like 'e%e';

select concat(first_name, ' ', last_name)
from employees
where first_name like 'e%e'
and last_name like 'e%e';


# 3) Find all employees born on Christmas — 842 rows.

SELECT *
from employees
where month(birth_date) = 12
and day(birth_date) = 25;

# 4) Find all employees hired in the 90s and born on Christmas — 362 rows.

select *
from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25;



# 5) Change the query for employees hired in the 90s and born on Christmas such that the first
# result is the oldest employee who was hired last. It should be Khun Bernini.
select *
from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25
order by employees.employees.hire_date desc
limit 1;


# 6) For your query of employees born on Christmas and hired in the 90s, use datediff() to find how
# many days they have been working at the company (Hint: You might also need to use now() or curdate()).

select *, DATEDIFF(CURDATE(), employees.employees.hire_date) total
from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25
order by employees.employees.hire_date desc;




