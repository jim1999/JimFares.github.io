USE sakila;
SELECT c.first_name, c.last_name, SUM(p.amount) as TotalAmt
FROM customer c
JOIN payment p on p.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY TotalAmt DESC;