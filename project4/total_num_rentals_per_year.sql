USE sakila;
SELECT year(rental_date) as Year, COUNT(rental_id) as Rented_Films FROM rental group by YEAR;