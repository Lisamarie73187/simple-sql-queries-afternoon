-- Table People

DROP TABLE IF EXISTS person;

CREATE TABLE person (
	id INTEGER PRIMARY KEY,
  	name VARCHAR,
  	age INTEGER,
  	height INTEGER,
  	city VARCHAR,
  	favorite_color VARCHAR
);

INSERT INTO person
	(name, age, height, city, favorite_color)
  VALUES
  ('Bob', 29, 150, 'San Diego', 'blue'),
  ('Bill', 18, 150, 'Phoenix', 'orange'),
  ('Stephanie', 12, 90, 'LA', 'yellow'),
  ('Greg', 24, 137, 'Dallas', 'green'),
  ('George', 59, 150, 'Tuscon', 'purple');
  
SELECT * FROM person 
ORDER BY height DESC;

SELECT * FROM person 
ORDER BY height;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
ORDER BY age;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange','green','blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');


-- Table Orders

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
	personid INTEGER,
  	productname VARCHAR,
  	productprice DECIMAL,
  	quantity INTEGER
);

INSERT INTO orders 
	(personid, productname, productprice, quantity)
VALUES
	(1232, 'toy', 40, 6), 
    (1345, 'toy3', 35, 3), 
    (3234, 'toy4', 24, 15), 
    (3434, 'toy5', 90, 8), 
    (1232, 'toy6', 40, 4);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(productprice * quantity) FROM orders;

SELECT SUM(productprice * quantity) FROM orders GROUP BY personid;


INSERT INTO Artist
(Name)
VALUES
('Bob Dylan'),
('Georgia okeeffe'),
('Andy Warhol');

SELECT * FROM Artist
ORDER BY Name DESC;

SELECT * FROM Artist
ORDER BY Name  
LIMIT 5;

SELECT * FROM Artist
WHERE Name like 'Black%';

SELECT * FROM Artist
WHERE Name like '%Black%';

SELECT FirstName, LastName FROM Employee
WHERE City = 'Calgary';

SELECT FirstName,LastName,BirthDate FROM Employee
ORDER BY BirthDate;

SELECT FirstName,LastName,BirthDate FROM Employee
ORDER BY BirthDate
LIMIT 1;

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE ReportsTo = 2;

SELECT COUNT(*) FROM Employee
WHERE City = 'Lethbridge';

SELECT COUNT(*) FROM Invoice
WHERE BillingCountry = 'USA';

SELECT MAX(Total) FROM Invoice;

SELECT * FROM Invoice;

SELECT MIN(Total) FROM Invoice;

SELECT * FROM Invoice
WHERE Total > 5.00
ORDER BY Total;

SELECT COUNT(*) FROM Invoice
WHERE Total < 5;

SELECT COUNT(*) FROM Invoice
WHERE BillingState IN ('AZ','TX','CA');

SELECT AVG(Total) FROM Invoice;

SELECT SUM(Total) From Invoice;