USE sakila;
SELECT AVG(f.rental_duration) as AVG_Rental_Duration
FROM film f
JOIN film_category fc on f.film_id = fc.film_id
JOIN inventory i ON f.film_id = i.film_id
WHERE fc.category_id = 5;