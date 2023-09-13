USE sakila;
SELECT film_id, title, rental_rate FROM film HAVING rental_rate > (SELECT AVG(rental_rate) FROM film);