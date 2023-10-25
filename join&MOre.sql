use frist;
CREATE TABLE boy (
    B_id int PRIMARY KEY,
    name VARCHAR(50),
    weight int
);
CREATE TABLE girl (
    gid INT PRIMARY KEY,
    gname VARCHAR(50),
    gWeight int,
    id INT
);

INSERT INTO boy (B_id, name, weight)
VALUES 
    (1, 'Lishanth', 55),
    (2, 'Michael', 65),
    (3, 'William', 72),
    (4, 'James', 68),
    (5, 'Daniel', 600);
    
INSERT INTO girl (gid, gname, gWeight, id)
VALUES 
    (101, 'sarah', 600),
    (102, 'Olivia', 55),
    (103, 'Sophia', 58),
    (104, 'Ava', 62),
    (105, 'Princes', 72);
    
SELECT 
    Learners.B_Id,
    Learners.LearnersName,
    Trainer.IdTrainer,
    Trainer.Name
FROM
    Learners
        INNER JOIN
    Trainer
WHERE
    Learners.age = Trainer.age;
    
SELECT boy.b_id,
	boy.name,boy.weight,
    girl.gid,girl.gname,girl.gweight
FROM boy
INNER JOIN girl ON boy.weight = girl.gweight;


SELECT *
FROM boy
RIGHT JOIN girl ON boy.B_id = girl.id;

SELECT *
FROM boy
LEFT JOIN girl ON boy.B_id = girl.id;

select * from boy inner join girl;
