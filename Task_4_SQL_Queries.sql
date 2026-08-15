USE ecommerce_db;

-- 1. SELECT
SELECT *
FROM ecommerce_sales;


-- 2. WHERE
SELECT *
FROM ecommerce_sales
WHERE quantity > 1;


-- 3. ORDER BY
SELECT *
FROM ecommerce_sales
ORDER BY unit_price DESC;


-- 4. GROUP BY
SELECT category, COUNT(*) AS total_records
FROM ecommerce_sales
GROUP BY category;


-- 5. Aggregate Functions: SUM and AVG
SELECT
    SUM(quantity) AS total_quantity,
    AVG(quantity) AS average_quantity,
    SUM(unit_price) AS total_unit_price,
    AVG(unit_price) AS average_unit_price
FROM ecommerce_sales;


-- 6. INNER JOIN
SELECT
    s.customer_id,
    s.order_id,
    s.product_name,
    s.quantity,
    c.first_name,
    c.last_name
FROM ecommerce_sales AS s
INNER JOIN customers AS c
    ON s.customer_id = c.customer_id;


-- 7. LEFT JOIN
SELECT
    s.customer_id,
    s.order_id,
    s.product_name,
    s.quantity,
    c.first_name,
    c.last_name
FROM ecommerce_sales AS s
LEFT JOIN customers AS c
    ON s.customer_id = c.customer_id;


-- 8. RIGHT JOIN
SELECT
    s.customer_id,
    s.order_id,
    s.product_name,
    s.quantity,
    c.first_name,
    c.last_name
FROM ecommerce_sales AS s
RIGHT JOIN customers AS c
    ON s.customer_id = c.customer_id;


-- 9. Subquery
SELECT *
FROM ecommerce_sales
WHERE unit_price > (
    SELECT AVG(unit_price)
    FROM ecommerce_sales
);


-- 10. Create View for Analysis
CREATE OR REPLACE VIEW sales_category_analysis AS
SELECT
    category,
    COUNT(*) AS total_records,
    SUM(quantity) AS total_quantity,
    AVG(quantity) AS average_quantity,
    SUM(unit_price) AS total_unit_price,
    AVG(unit_price) AS average_unit_price
FROM ecommerce_sales
GROUP BY category;


-- 11. Verify View
SELECT *
FROM category_analysis;


-- 12. Create Index on quantity
-- Already created earlier; do NOT execute this again
CREATE INDEX idx_quantity
ON ecommerce_sales(quantity);


-- 13. Verify Index
SHOW INDEX FROM ecommerce_sales;


-- 14. Optimize Query Using Index
EXPLAIN
SELECT *
FROM ecommerce_sales
WHERE quantity = 2;