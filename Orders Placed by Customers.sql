CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Suresh'),
(4, 'Priya'),
(5, 'Rahul');

INSERT INTO orders (order_id, customer_id, amount, order_date) VALUES
(1, 1, 2500, '2023-01-01'),
(2, 1, 3000, '2023-01-05'),
(3, 2, 4500, '2023-01-06'),
(4, 3, 4000, '2023-02-12'),
(5, 4, 5000, '2023-01-07'),
(6, 5, 2000, '2023-01-08');

/*

Write a SQL query to count the number of orders placed by each customer.

*/

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS


SELECT C.CUSTOMER_ID,
       C.CUSTOMER_NAME,
	   COUNT(*) AS NO_OF_ORDERS
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID=O.CUSTOMER_ID
GROUP BY 1,2
ORDER BY 1