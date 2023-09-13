USE sakila;
SELECT f.film_id, SUM(p.amount) as Total_Revenue
FROM film f
JOIN inventory i on f.film_id = i.film_id
JOIN rental r on i.inventory_id = r.inventory_id
JOIN payment p on r.rental_id = p.rental_id
GROUP BY film_id;