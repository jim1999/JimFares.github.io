USE sakila;
SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) as TotalNo_Rented
FROM customer c
JOIN rental r on r.customer_id = c.customer_id
GROUP BY customer_id;