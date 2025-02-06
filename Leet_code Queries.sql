-- LEET CODE SQL
-- SQL Schema
SELECT DISTINCT author_id as id
FROM Views_Table
WHERE author_id = viewer_id
ORDER BY id ASC;

SELECT tweet_id, content
FROM Tweets
WHERE content <= 15;

SELECT tweet_id, content
FROM Tweets
WHERE LENGTH(content) > 15;

-- LENGTH(Content): Calculates the number of characters in the content column.
-- WHERE LENGTH(content) > 15: Filters out tweets where the character count exceeds 15.

SELECT Column_Name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table. --
SELECT product_name, year, price
FROM Sales_Table S
JOIN Product P ON s.product_id = P.product_id;

SELECT product_name, year, price
FROM Sales_Table
LEFT JOIN Product
ON sale_id IS NOT NULL;

SELECT Employees.id, EmployeeUNI.unique_id
FROM Employees
LEFT JOIN EmployeeUNI 
ON Employees.id = EmployeeUNI.unique_id;

-- COALESCE(unique_id, NULL): Ensures that if unique_id is NULL, it remains NULL --
-- Customers who visited but did not make any transaction --

-- Write a solution to find the IDs of the users who visited without making any 
-- transactions and the number of times they made these types of visits.--

SELECT customer_id, COUNT(V.visit_id) AS Visit_Count
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.visit_id IS NULL
GROUP BY V.customer_id;

-- LEFT JOIN Transactions T ON V.visit_id = T.visit_id - Keeps all visits, even those without transactions.
-- WHERE T.visit_id IS NULL - Filters visits that have no matching transaction.
-- GROUP BY V.customer_id - Groups by customer to count such visits.
-- COUNT(V.visit_id) AS visit_count - Counts how many such visits each customer had.


SELECT product_id
FROM Products
WHERE recyclable = 'Y'
AND low_fats = 'Y'
GROUP BY recyclable, low_fats
ORDER BY product_id DESC;

-- Write a solution to find all dates' id with higher temperatures 
-- compared to its previous dates (yesterday).
-- Return the result table in any order.

SELECT W1.id
FROM Weathers W1
JOIN Weathers W2 
ON W1.recordDate = DATE_ADD(W2.recordDate, interval 1 DAY)
WHERE  W1.temperature > W2.temperature

-- Calculate the average processing time per machine_id.
-- The precessing time for each (machine_id, process_id) is
--   processing time = endstamp - start timestamp.-
-- The average processing time per machine is 

WITH ProcessTimes AS (
     SELECT
     a.machine_id,
     (b.timestamp - a.timestamp) AS processing_time
     FROM Activities a
     JOIN Activities b
     ON a.machine_id = b.machine_id
     AND a.process_id = b.process_id
     WHERE a.activity_type = 'start'
     AND b.activity_type = 'end'
)
SELECT
machine_id,
ROUND(AVG(processing_time), 3) AS processing_time
FROM ProcessTimes
GROUP BY machine_id;













