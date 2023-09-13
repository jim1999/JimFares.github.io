USE sakila;
SELECT customer_id, sum(amount) as TotalRevenue from payment group by customer_id;