USE sakila;
SELECT c.first_name, c.last_name, count(r.rental_id) as TotalNo_Rented, AVG(datediff(r.return_date, r.rental_date)) as AverageTime_Rented
FROM customer c
JOIN rental r on r.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name, c.customer_id;
