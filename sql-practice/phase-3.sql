-- Event 1
INSERT INTO customers (name, phone)
VALUES
    ('Rachel', 1111111111);

-- Event 2
UPDATE customers
SET points = points + 1
WHERE name = 'Rachel';

INSERT INTO coffee_orders
DEFAULT VALUES;

-- Event 3
INSERT INTO customers (name, email, phone)
VALUES
    ('Monica', 'monica@friends.show', 2222222222),
    ('Phoebe', 'phoebe@friends.show', 3333333333);

-- Event 4
UPDATE customers
SET points = points + 3
WHERE name = 'Phoebe';

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;


-- Event 5
UPDATE customers
SET points = points + 4
WHERE name = 'Rachel' OR name = 'Monica';

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

-- Event 6
SELECT points from customers
WHERE name = 'Monica';

-- Event 7
SELECT points from customers
WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES (1);

UPDATE customers
SET points = 0
WHERE name = 'Rachel';

-- Event 8
INSERT INTO customers (name, email)
VALUES
    ('Joey', 'joey@friends.show'),
    ('Chandler', 'chandler@friends.show'),
    ('Ross', 'ross@friends.show');


-- Event 9
UPDATE customers
SET points = points + 6
WHERE name = 'Ross';

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;


-- Event 10
UPDATE customers
SET points = points + 3
WHERE name = 'Monica';

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;

-- Event 11
SELECT points FROM customers
WHERE name = 'Phoebe';

UPDATE customers
SET points = points + 1
WHERE name = 'Phoebe';

INSERT INTO coffee_orders
DEFAULT VALUES;


-- Event 12
DELETE FROM coffee_orders
WHERE id = 18 OR id = 19;

UPDATE customers
SET points = points - 2
WHERE name = 'Ross';


-- Event 13
UPDATE customers
SET points = points + 2
WHERE name = 'Joey';

INSERT INTO coffee_orders
DEFAULT VALUES;

INSERT INTO coffee_orders
DEFAULT VALUES;


-- Event 14
SELECT points from customers
WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES (1);

UPDATE customers
SET points = points - 10
WHERE name = 'Monica';

-- Event 15
DELETE FROM customers
WHERE name = 'Chandler';


-- Event 16
SELECT points FROM customers
WHERE name = 'Ross';

UPDATE customers
SET points = points + 1
WHERE name = 'Ross';

INSERT INTO coffee_orders
DEFAULT VALUES;


-- Event 17
SELECT points FROM customers
WHERE name = 'Joey';

UPDATE customers
SET points = points + 1
WHERE name = 'Joey';

INSERT INTO coffee_orders
DEFAULT VALUES;


-- Event 18
UPDATE customers
SET email = 'p_as_in_phoebe@friends.show'
WHERE name = 'Phoebe';
