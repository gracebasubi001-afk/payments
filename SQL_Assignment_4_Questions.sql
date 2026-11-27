-- SQL Assignment: Aggregate Functions and GROUP BY
-- Before running these queries, select the database/schema that contains
-- the payments, customers, and orderdetails tables.
-- In MySQL Workbench, double-click the correct schema in the SCHEMAS panel
-- so it becomes bold (active). Your earlier error indicated that sale.payments
-- did not exist, so do not assume the schema is named 'sale' or 'sales'.

-- QUESTION 1: Total payment amount for each payment date
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- QUESTION 2: Average credit limit of each customer
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- QUESTION 3: Total price of products ordered
SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4: Highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
