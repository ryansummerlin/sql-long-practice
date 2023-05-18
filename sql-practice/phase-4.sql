DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS performance_reviews;
DROP TABLE IF EXISTS parties;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT,
    role TEXT,
    romantic_relationship TEXT DEFAULT NULL
);

CREATE TABLE performance_reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    score INTEGER(4, 2)
);

CREATE TABLE parties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    budget INTEGER,
    is_offsite INTEGER DEFAULT 0
);


-- Events 1-7
INSERT INTO employees (first_name, last_name, department, role)
VALUES
    ('Michael', 'Scott', 'Management', 'Regional Manager'),
    ('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
    ('Jim', 'Halpert', 'Sales', 'Sales Representative'),
    ('Pam', 'Beesly', 'Reception', 'Receptionist'),
    ('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representative'),
    ('Angela', 'Martin', 'Accounting', 'Head of Accounting'),
    ('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');

-- Event 8
UPDATE employees
SET romantic_relationship = 'Pam'
WHERE first_name = 'Roy';

UPDATE employees
SET romantic_relationship = 'Roy'
WHERE first_name = 'Pam';


-- Event 9
INSERT INTO employees (first_name, last_name, department, role)
VALUES
    ('Ryan', 'Howard', 'Reception', 'Temp');


--Event 10
INSERT INTO parties (budget)
VALUES (100.00);


-- Events 11 and 12
INSERT INTO performance_reviews (employee_id, score)
VALUES
    (2, 3.3),
    (3, 4.2);


-- Events 13 and 14
UPDATE performance_reviews
SET score = 9.0
WHERE employee_id = 2;

UPDATE performance_reviews
SET score = 9.3
WHERE employee_id = 3;


-- Event 15
UPDATE employees
SET role = 'Assistant Regional Manager'
WHERE first_name = 'Jim';


-- Event 16
UPDATE employees
SET department = 'Sales'
WHERE first_name = 'Ryan';

UPDATE employees
SET role = 'Sales Representative'
WHERE first_name = 'Ryan';


-- Event 17
INSERT INTO parties (budget)
VALUES (50.00);


-- Event 18
UPDATE employees
SET romantic_relationship = 'Angela'
WHERE first_name = 'Dwight';

UPDATE employees
SET romantic_relationship = 'Dwight'
WHERE first_name = 'Angela';


-- Event 19
INSERT INTO performance_reviews (employee_id, score)
VALUES (6, 6.2);


-- Event 20
UPDATE employees
SET romantic_relationship = 'Ryan'
WHERE first_name = 'Kelly';

UPDATE employees
SET romantic_relationship = 'Kelly'
WHERE first_name = 'Ryan';


-- Event 21
INSERT INTO parties (budget)
VALUES (50.00);


-- Event 22
DELETE FROM employees
WHERE first_name = 'Jim';

UPDATE employees
SET romantic_relationship = NULL
WHERE romantic_relationship = 'Jim';

DELETE FROM performance_reviews
WHERE employee_id = 3;


-- Event 23
UPDATE employees
SET romantic_relationship = NULL
WHERE first_name = 'Pam' OR first_name = 'Roy';


-- Events 24 and 25
INSERT INTO performance_reviews (employee_id, score)
VALUES
    (4, 7.6),
    (2, 8.7);


-- Event 26
DELETE FROM employees
WHERE first_name = 'Ryan';

UPDATE employees
SET romantic_relationship = NULL
WHERE romantic_relationship = 'Ryan';

DELETE FROM performance_reviews
WHERE employee_id = 8;


-- Events 27 and 28
INSERT INTO employees (first_name, last_name, department, role)
VALUES
    ('Jim', 'Halpert', 'Sales', 'Sales Representative'),
    ('Karen', 'Filippelli', 'Sales', 'Sales Representative');


-- Event 29
UPDATE employees
SET romantic_relationship = 'Karen'
WHERE first_name = 'Jim';

UPDATE employees
SET romantic_relationship = 'Jim'
WHERE first_name = 'Karen';


-- Event 30
INSERT INTO parties (budget)
VALUES (120.00);


-- Event 31
DELETE FROM parties
WHERE id = 4;

INSERT INTO parties (budget, is_offsite)
VALUES (300.00, 1);


-- Event 32
UPDATE employees
SET romantic_relationship = NULL
WHERE first_name = 'Jim' OR first_name = 'Karen';


-- Event 33
UPDATE employees
SET romantic_relationship = 'Jim'
WHERE first_name = 'Pam';

UPDATE employees
SET romantic_relationship = 'Pam'
WHERE first_name = 'Jim';
