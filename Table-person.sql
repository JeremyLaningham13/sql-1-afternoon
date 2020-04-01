-- Table - person

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
INSERT INTO person
    (name, age, height_in_cm, city, favorite_color)
VALUES
    ('Person 1', 38, 180, 'Dallas', 'Navy'),
    ('Person 2', 20, 185, 'Houston', 'Red'),
    ('Person 3', 45, 175, 'Plano', 'Pink'),
    ('Person 4', 50, 170, 'McKinney', 'Blue'),
    ('Person 5', 30, 180, 'Dallas', 'Orange');

--3
SELECT * FROM person ORDER BY height_in_cm DESC;

--4
SELECT * FROM person ORDER BY height_in_cm ASC;

--5
SELECT * FROM person ORDER BY age DESC;

--6
SELECT * FROM person WHERE age > 20;

--7
SELECT * FROM person WHERE age = 18;

--8
SELECT * FROM person WHERE age < 20 OR age > 30;

--9
SELECT * FROM person WHERE age != 27;

--10
SELECT * FROM person WHERE favorite_color != 'Red';

--11
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

--12
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--13
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

--14
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');