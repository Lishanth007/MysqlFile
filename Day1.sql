create database WorkPlace;

use WorkPlace;
UPDATE Employee
SET No_of_Leaves = 100
WHERE Id = 1;

CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    EmpName VARCHAR(255),
    Designation VARCHAR(255),
    Salary DECIMAL(10, 2),
    No_of_Leaves INT
);

INSERT INTO Employee (Id, EmpName, Designation, Salary, No_of_Leaves)
VALUES 
    (1, 'Praisy', 'Manager', 50000.00, 360),
    (2, 'Lishanth', 'Developer', 60000.00, 18),
    (3, 'Lokesh', 'Analyst', 45000.00, 22),
    (4, 'Sarah', 'Designer', 55000.00, 15),
    (5, 'Banu', 'Tester', 48000.00, 25);
select * from Employee;

#if any person is taking leave more than (13) ==>35000-1000 as salaryDeducted.
use WorkPlace;
select EmpName , Salary - 1000 as salLessForLeave from Employee where No_of_Leaves >= 13;

# If any person havent took any leave, The company bonus of Rs.5000 (40000+5000) as salary withBonus.
use WorkPlace;
select EmpName , Salary + 5000 as bonus from Employee where No_of_Leaves < 13;

# If a monthly salary of a person is 50000, Then what is his one day salary?
use WorkPlace;
select EmpName , Salary/30 as OneDaySal from Employee;

select EmpName , Salary as amtLess from Employee;
