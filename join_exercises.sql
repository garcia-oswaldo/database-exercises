use employees;


# Create a file named join_exercises.sql to do your work in.
#
# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of the
# current manager for that department.

select deps.dept_name, concat(manager.`first_name`, ' ', manager.last_name) as 'Department Manager'
from departments deps
join dept_manager departmentManger on deps.dept_no = departmentManger.dept_no
join employees manager on departmentManger.emp_no = manager.emp_no;


# Find the name of all departments currently managed by women.
#
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+



select  dep.dept_name as `Department Name`,concat(e.first_name, ' ',e.last_name) as `Department Manager`
from employees as e
join dept_manager dm on e.emp_no = dm.emp_no
join departments dep on dm.dept_no = dep.dept_no
where e.gender = 'F' and dm.to_date='9999-01-01'
order by dep.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
#
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+

select t.title, count(t.emp_no) as total
from departments d
inner join dept_emp de on d.dept_no = de.dept_no
inner join titles t on de.emp_no = t.emp_no
where d.dept_name = 'Customer Service'
and de.to_date = '9999-01-01'
and t.to_date = '9999-01-01'
group by t.title;

# Find the current salary of all current managers.
#
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+

select  dep.dept_name as `Department Name`,concat(e.first_name, ' ',e.last_name) as `Department Manager`, salary as `salary`
from employees as e
join dept_manager dm on e.emp_no = dm.emp_no
join departments dep on dm.dept_no = dep.dept_no
join salaries s on e.emp_no = s.emp_no
where s.to_date= '9999-01-01' and dm.to_date='9999-01-01'
order by dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
#
#
# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total

Select  concat(e.first_name, ' ', e.last_name) as Employee,d.dept_name as Department, concat(e2.first_name, ' ', e2.last_name) as Manager
from departments as d
inner join dept_emp as de on d.dept_no = de.dept_no
inner join employees as e on de.emp_no = e.emp_no
inner join dept_manager as dm on d.dept_no = dm.dept_no
inner join employees as e2 on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01' and dm.to_date ='9999-01-01'


# subquery...
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
limit 10;

#Example of inner join of subquery
select e.first_name, e.last_name, e.birth_date
from employees as e
inner join dept_manager as de on e.emp_no = de.emp_no
LIMIT 10;
