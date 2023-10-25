USE frist;
CREATE TABLE issues (
    issue_id INT PRIMARY KEY,
    description TEXT,
    emergency_type_id INT,
    FOREIGN KEY (emergency_type_id) REFERENCES emergency_numbers(emergency_type_id)
);
CREATE TABLE emergency_numbers (
    emergency_type_id INT PRIMARY KEY,
    emergency_type TEXT,
    call_number INT
);

INSERT INTO emergency_numbers (emergency_type_id, emergency_type, call_number) VALUES 
    (1, 'Ambulance', 108),
    (2, 'Police', 100);
INSERT INTO issues (issue_id, description, emergency_type_id) VALUES 
    (1, 'Medical Emergency', 1),
    (2, 'Robbery', 2);           

