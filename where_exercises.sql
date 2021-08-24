use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
# (Hint: Use IN).
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.

select * from employees.employees e where e.first_name in ( 'Irene'
,'Vidva', 'Maya');

select * from employees.employees e where e.last_name like 'E%';

select * from employees.employees e where e.last_name like '%q';