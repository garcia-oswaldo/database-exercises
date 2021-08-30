use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows
select *
from employees e
where e.hire_date in
(SELECT e.hire_date
 FROM employees e
WHERE emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles
# distinct titles
select distinct t.title
from titles t
where emp_no in
      (SELECT emp_no
        FROM employees e
        where e.first_name='Aamod');

# all titles
select t.title
from titles t
where emp_no in
      (SELECT emp_no
       FROM employees e
       where e.first_name='Aamod')
# Find all the current department managers that are female.

select concat(e.first_name,' ',e.last_name) as name, e.gender
from employees e
where e.emp_no in(
    select emp_no
    from dept_manager
    where e.gender = 'F' and dept_manager.to_date ='9999-01-01'
 )


# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+
# BONUS
#
# Find all the department names that currently have female managers.
#
#
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+
# Find the first and last name of the employee with the highest salary.
#
#
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+;