create database sales;
use sales;
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    sale_date DATE
);
INSERT INTO Sales (sale_id, customer_name, product_name, quantity, price_per_unit, sale_date) VALUES
(1, 'Anjali Mehta', 'Laptop', 1, 55000.00, '2023-05-10'),
(2, 'Rahul Sharma', 'Mouse', 2, 500.00, '2023-05-10'),
(3, 'Neha Singh', 'Keyboard', 1, 1500.00, '2023-05-11'),
(4, 'Vikas Verma', 'Laptop', 1, 60000.00, '2023-05-12'),
(5, 'Preeti Rao', 'Monitor', 2, 8000.00, '2023-05-13'),
(6, 'Aman Joshi', 'Mouse', 3, 450.00, '2023-05-14'),
(7, 'Suman Yadav', 'Monitor', 1, 7500.00, '2023-05-15'),
(8, 'Rohit Kumar', 'Laptop', 2, 53000.00, '2023-05-15'),
(9, 'Kavita Sharma', 'Keyboard', 1, 1800.00, '2023-05-16'),
(10, 'Arjun Dev', 'Mouse', 4, 550.00, '2023-05-17');
SELECT product_name, SUM(quantity * price_per_unit) AS total_revenue
FROM Sales
GROUP BY product_name;

SELECT product_name, AVG(price_per_unit) AS avg_price
FROM Sales
GROUP BY product_name;

SELECT customer_name, COUNT(sale_id) AS total_sales
FROM Sales
GROUP BY customer_name;

SELECT product_name, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_name
HAVING SUM(quantity) > 3;

SELECT customer_name, SUM(quantity * price_per_unit) AS total_spent
FROM Sales
GROUP BY customer_name
ORDER BY total_spent DESC;






