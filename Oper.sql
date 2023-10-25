use Workplace;
select * from Employee;

# And....
select * from Employee where ID = 1 AND Salary = 50000;

#OR....
select * from Employee where Salary = 50000 OR No_of_Leaves = 10;

#BETWEEN....
select * from Employee where Salary BETWEEN 50000 AND 70000;

#LIKE...
select * from Employee where EmpName LIKE "L%";

#IN...
select * from Employee where ID IN(1,2,5);

#NOT...
select * from Employee where ID NOT BETWEEN 1 AND 4;

select * from student;
select * from teacher;
#ANY...
select * from student where age = ANY (select age from teacher);

select * from teacher where age <ALL (select age from student);

