use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
# (Hint: Use IN).
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.
# This will allow you to count records you select
select count(e.emp_no)
from employees.employees e
where e.first_name in ('Irena', 'Vidya', 'Maya');


select *
from employees.employees e
where e.first_name in ('Irena', 'Vidya', 'Maya')
order by e.first_name;

select *
from employees.employees e
where e.last_name like 'E%';

select *
from employees.employees e
where e.last_name like '%q%';
# This will allow you to count records you select
select count(e.emp_no)
from employees.employees e
where e.last_name like '%q%';
select *
from employees.employees e
where e.last_name like '%q%';


# Part Two
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead
# 0f IN — 709 rows.
select *
from employees.employees e
where e.first_name ='Irena' or e.first_name= 'Vidya' or e.first_name='Maya';

#
# Add a condition to the previous query to find everybody with those names
# who is also male — 441 rows.
select *
from employees.employees e
where  e.gender = 'M' and(
            e.first_name = 'Irena'
        or e.first_name = 'Vidya'
        or e.first_name = 'Maya');

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select *
from employees.employees e
where e.last_name like 'e%'
   or e.last_name like '%e';
# Duplicate the previous query and update it to find all employees whose
# last name starts and ends with 'E' — 899 rows.
select *
from employees.employees e
where e.last_name like 'e%'
  and e.last_name like '%e';
#
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

select *
from employees.employees e
where e.last_name like '%q%' and e.last_name not like '%qu%'