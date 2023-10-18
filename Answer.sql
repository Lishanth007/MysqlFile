use workPlace;

create table employe (id int primary key, emp_name varchar(255), emp_age int, emp_salary float);
insert into employe values
	(1, 'Mike',35, 5000.5),
	(2, 'Michale', 30,3500),
    (3, 'Jimmy', 27,4500),
    (4, 'Shaun', 30,4200),
    (5, 'Ben', 45,4500),
    (6, 'John', 28,2600),
	(7, 'Mike', 40,5500);
    
# Ascendind by name...
select * from employe order by emp_name ASC;

#Create a group by counting the Number of peoples who is getting the salary of rs.4500
select count(emp_name) from employe group by emp_salary = 4500;


#Employee whose age is greater than 35...
select * from employe where emp_age > 35;

#Calculating the total of all salary...
select sum(emp_salary) as total_salary from employe;

#Calculating the avg of all salary...
select avg(emp_salary) as Avg_sal from employe;

#Rretrieve emp id and name those who getting salary > 3000...
select id, emp_name from employe where emp_salary > 3000;

#get name who start from M...
select emp_name from employe where emp_name like 'M%';

#get all details whose name ends from n...
select * from employe where emp_name like '%n';

#whose name have litter i and m in there name...
select emp_name from employe where emp_name like '%i%' and emp_name like '%m%';

#desc ored the table by id...
select * from employe order by id desc;

#find name who getting man & min salary...
#select * ,max(emp_salary) from employe;
#max

select max(emp_salary) as MaximumSalary;

select * from employe where emp_salary = (select max(emp_salary) from employe);
#min
select * from employe where emp_salary = (select min(emp_salary) from employe);
