use employees;


CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

select u.name, u.email, r.name
from users u
         inner join roles r on u.role_id = r.id
where u.email like 's%';

# Left Join when you want all users and if they have a role

select u.name, u.email, r.name
from users u
         left join roles r on u.role_id = r.id;

#exclusive left join
select u.name, u.email, r.name
from users u
         left join roles r on u.role_id = r.id
where r.name is null;

# right join
select u.name, u.email, r.name
from users u
         right join roles r on u.role_id = r.id;

describe  employees.employees;

#associative tables and joins required on many to many relationships.
#fetch all the department names that Georgi's worked for...........
select e.first_name, e.last_name, de.from_date, de.to_date, d.dept_name
from employees.employees e
inner join employees.dept_emp de on e.emp_no = de.emp_no
inner join employees.departments d on de.dept_no = d.dept_no
where e.emp_no = 10001;

select e.first_name, e.last_name, de.from_date, de.to_date, d.dept_name
from employees.employees e
         inner join employees.dept_emp de on e.emp_no = de.emp_no
         inner join employees.departments d on de.dept_no = d.dept_no
where e.last_name like 'D%';



