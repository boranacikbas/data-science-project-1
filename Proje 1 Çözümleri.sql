-- SQL Proje Çözüm Dosyası
SELECT * FROM customers

SELECT * FROM orders ORDER BY total_amount DESC LIMIT 5
SELECT * FROM products

SELECT product_name, price FROM products ORDER BY price ASC LIMIT 3

SELECT * FROM customers ORDER BY signup_date ASC LIMIT 

SELECT product_name, stock_quantity FROM products ORDER BY stock_quantity DESC LIMIT 1
SELECT * FROM orders ORDER BY order_date DESC LIMIT 1

SELECT product_name FROM products ORDER BY product_name ASC 

SELECT customer_id, email FROM customers ORDER BY customer_id LIMIT 5

SELECT order_id, total_amount FROM orders ORDER BY total_amount LIMIT 3

SELECT * FROM customers 
WHERE country='Turkey'
ORDER BY customer_name