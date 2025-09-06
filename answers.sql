-- Question 1 🧑‍💼
-- Get employee details along with their officeCode using INNER JOIN
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Get product details and their productLine info using LEFT JOIN
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Retrieve first 10 orders with customer info using RIGHT JOIN
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
