use workplace;
select * from employe;

DELIMITER //
CREATE PROCEDURE totales(OUT emp_age int) 
BEGIN  
    SELECT SUM(emp_age) INTO emp_age FROM employee;
    select @totals;
END;

CALL totales(@totalSal);


DELIMITER //
CREATE PROCEDURE idfro(IN id int) 
BEGIN  
    SELECT * FROM employe where id = idfrom;
END;

CALL idfrom(2);
