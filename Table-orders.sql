--Table - orders

--1
CREATE TABLE person
(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    age INTEGER,
    height_in_cm INTEGER,
    city VARCHAR(150),
    favorite_color VARCHAR(150)
);

--2
INSERT INTO orders
    (person_id, product_name, product_price, quantity)
VALUES
    (0, 'pizza', 12.00, 1),
    (1, 'burger', 10.00, 2),
    (2, 'chicken', 15.00, 1);

--3
SELECT * FROM orders;

--4
SELECT SUM(quantity) FROM orders;

--5
SELECT SUM(product_price * quantity) FROM orders;

--6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;