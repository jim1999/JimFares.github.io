USE sakila;
SELECT c.name, COUNT(f.film_id) as No_Film_Per_Category
FROM film_category as fc
JOIN film f on f.film_id = fc.film_id
JOIN category c on c.category_id = fc.category_id
GROUP BY c.name;