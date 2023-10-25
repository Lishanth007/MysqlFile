use workplace;
select * from student;
#Find all records where the first name starts with "J"...
SELECT * FROM student WHERE first_name LIKE 'J%';

#Find all records where the last name ends with "on"...
SELECT * FROM your_table WHERE last_name LIKE '%on';

#Find all records where the first name contains an "a":
SELECT * FROM student WHERE first_name LIKE '%a%';

#Find all records where the last name starts with "D" and is three characters long:
SELECT * FROM your_table WHERE last_name LIKE 'D__';

#Find all records where the first name starts with "J" and the last name ends with "e":
SELECT * FROM your_table WHERE first_name LIKE 'J%' AND last_name LIKE '%e';

#Find all records where the first name contains exactly three characters:
SELECT * FROM your_table WHERE first_name LIKE '___';

#Find all records where the first name starts with "J" and the last name contains an "o":
SELECT * FROM your_table WHERE first_name LIKE 'J%' AND last_name LIKE '%o%';

#Find all records where the first name ends with "y" or the last name starts with "S":
SELECT * FROM your_table WHERE first_name LIKE '%y' OR last_name LIKE 'S%';

#Find all records where the first name starts with "P" and is followed by any two characters:
SELECT * FROM your_table WHERE first_name LIKE 'P__';

#Find all records where the first name starts with any character and the last name starts with the same character:
SELECT * FROM your_table WHERE SUBSTRING(first_name, 1, 1) = SUBSTRING(last_name, 1, 1);
