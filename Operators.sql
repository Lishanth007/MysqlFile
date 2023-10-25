use workplace;
select * from student;
SELECT * FROM student WHERE first_name LIKE 'J%';

SELECT * FROM student WHERE last_name LIKE '%on';

SELECT * FROM student WHERE first_name LIKE '%a%';

SELECT * FROM student WHERE last_name LIKE 'D__';

SELECT * FROM student WHERE first_name LIKE 'J%' AND last_name LIKE '%e';

SELECT * FROM student WHERE first_name LIKE '___';

SELECT * FROM student WHERE first_name LIKE 'J%' AND last_name LIKE '%o%';

SELECT * FROM student WHERE first_name LIKE '%y' OR last_name LIKE 'S%';

SELECT * FROM student WHERE first_name LIKE 'P__';

SELECT * FROM student WHERE SUBSTRING(first_name, 1, 1) = SUBSTRING(last_name, 1, 1);
