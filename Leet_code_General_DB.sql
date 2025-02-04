CREATE DATABASE General_DB;
USE General_DB;

CREATE TABLE Views_Table(
article_id INT,
author_id INT,
viewer_id INT,
view_date DATE);

INSERT INTO Views_Table(article_id, author_id, viewer_id, view_date)
VALUES
(1, 3, 5, '2019-08-01' ),
(1, 3, 6, '2019-08-02' ),
(2, 7, 7, '2019-08-01' ),
(2, 7, 6, '2019-08-02' ),
(4, 7, 1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),
(3, 4, 4, '2019-07-21');


CREATE TABLE Tweets(
tweet_id INT,
content VARCHAR (255)
);

INSERT INTO Tweets
VALUES
(1, "Let us code"),
(2, "More than fifteen chars are here!");

CREATE TABLE Employees(
id INT primary key,
name VARCHAR (255)
);

INSERT INTO Employees(id, name)
VALUES
(1, "Alice"),
(7, "Bob"),
(11, "Meir"),
(90, "Winston"),
(3, "Jonathan");

CREATE TABLE EmployeeUNI(
id INT,
unique_id INT 
 );
 
INSERT INTO EmployeeUNI(id, unique_id)
 VALUES
 (3, 1),
 (11, 2), 
 (90, 3);
 
 CREATE TABLE Sales_Table(
 sale_id INT PRIMARY KEY,
 product_id INT,
 year INT,
 quantity INT,
 price INT
 );
 
 INSERT INTO Sales_Table(sale_id, product_id, year, quantity, price)
 VALUES
 (1, 100, 2008, 10, 5000 ),
 (2, 100, 2009, 12, 5000 ),
 (7, 200, 2011, 15, 9000);
 
 CREATE TABLE Product(
 product_id INT ,
 product_name VARCHAR(255)
 );
 
 INSERT INTO Product(product_id, product_name)
 VALUES
 (100, "Nokia"),
 (200, "Apple"),
 (300, "Samsung");
 
  CREATE TABLE Visits(
 visit_id INT,
 customer_id INT
 );
 
 INSERT INTO Visits(visit_id, customer_id)
 VALUES
 (1, 23),
 (2, 9),
 (4, 30),
 (5, 54),
 (6, 96),
 (7, 54);
 
 CREATE TABLE Transactions(
 transaction_id INT,
 visit_id INT,
 amount INT
 );
 
 INSERT INTO Transactions(transaction_id, visit_id, amount)
 VALUES
 (2, 5, 310),
 (3, 5, 300),
 (9, 5, 200),
 (12, 1, 910),
 (13, 2, 970);
 
 CREATE TABLE Weathers(
  id INT,
 recordDate DATE,
 temperature INT
 );
 
 INSERT INTO Weathers(id, recordDate, temperature)
 VALUES
 (1, "2015-01-01", 10),
 (2, "2015-01-02", 25),
 (3, "2015-01-03", 20),
 (4, "2015-01-04", 30),
 (5, "2015-01-06", 35),
 (6, "2015-01-04", 40);
 
 CREATE TABLE Activities(
 machine_id INT, 
 process_id INT,
 activity_type ENUM('Start','End') NOT NULL,
 timestamp FLOAT 
 );
 
 ALTER TABLE Activities MODIFY activity_type ENUM('start', 'end');
 
 INSERT INTO Activity(machine_id, process_id, activity_type, timestamp)
 VALUES
 (0, 0, 'start', 0.712),
 (0, 0, 'end', 1.520),
 (0, 1, 'start', 3.140),
 (0, 1, 'end', 4.120),
 (1, 0, 'start', 0.550),
 (1, 0, 'end', 1.550),
 (1, 1, 'start', 0.430),
 (1, 1, 'end', 1.420),
 (2, 0, 'start', 4.100),
 (2, 0, 'end', 4.512),
 (2, 1, 'start', 2.500),
 (2, 1, 'end', 5.000); 
 
 SHOW TABLES;
