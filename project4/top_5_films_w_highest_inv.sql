USE sakila;
SELECT f.title, COUNT(*) as Inventory_Count
FROM film as f
JOIN inventory i on i.film_id = f.film_id
group by f.title
order by Inventory_Count DESC
LIMIT 5;