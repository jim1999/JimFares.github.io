USE sakila;
SELECT AVG(p.amount) as AVG_Pay_Amt_on_Sunday
FROM payment p
JOIN customer c on c.customer_id = p.customer_id
JOIN rental r on r.rental_id = p.rental_id
WHERE dayofweek(r.rental_date) = 1;