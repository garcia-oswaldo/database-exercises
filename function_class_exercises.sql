use employees;

SELECT CONCAT('Hello ', 'Codeup', '!') as welcomeMessage;

SELECT DAYOFMONTH('1990-05-03');

select dayofyear('1990-05-03');

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT UNIX_TIMESTAMP() currentTimeInUnix;

SELECT CONCAT(e.first_name, ' ', e.last_name, '''s birthday is ', DAYOFMONTH(e.birth_date) , ',', MONTHNAME(e.birth_date)) PeopleBirthdays
from employees.employees e
limit 10