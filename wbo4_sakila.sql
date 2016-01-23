/*@author William O'Toole*/
/*Task 1
Write a query that produces a list of documentary movies (where movie category is ‘Documentary’) 
and a movie description contains the word ‘Drama’.  You will have to create a triple join between 
category, film_category, and category tables.  
Your result should contain the following columns with meaningful aliases:
Category Name
Film Title 
Film Description
Release Year
Hint:  you will need to create aliases for all tables involved in this query…
*/
USE sakila;
SELECT name AS 'Category', title AS 'Film_Title', description AS 'Description', release_year AS 'Released'
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE name = 'Documentary'
AND description LIKE '%drama%';
/*Task 2
Write a query that produces a list of movies an actress by the name of JULIA MCQUEEN played a role.  
You will have to create a triple join between film, film_actor, and actor tables.  
Your result should contain the following columns with meaningful aliases:
Film Title
Actor name (in a single column, last name and first name concatenated into a single string and separated by a comma).
*/
SELECT title AS 'Film_Title', CONCAT(first_name,' ',last_name) AS 'Actor_Name'
FROM film_actor
JOIN actor ON actor.actor_id = film_actor.actor_id 
JOIN film ON film.film_id = film_actor.film_id AND film_actor.film_id = film.film_id
WHERE first_name = 'JULIA'
AND last_name = 'MCQUEEN';
/*Task 3
Modify the query in a previous task to list all actors who played in a movie called “AMADEUS HOLY”. 
 Do not modify the original query – make a copy of it and modify that copy.
*/
SELECT title AS 'Film_Title', CONCAT(first_name,' ',last_name) AS 'Actor_Name'
FROM film_actor
JOIN actor ON actor.actor_id = film_actor.actor_id 
JOIN film ON film.film_id = film_actor.film_id AND film_actor.film_id = film.film_id
WHERE film.title = 'AMADEUS HOLY';
/*Task 4
Write a query that produces a list of movies rented by KATHLEEN ADAMS.  You will have to join the following 4 tables:
customer
rental
inventory
film
You can select all columns (SELECT *)
*/
SELECT *
FROM customer
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.inventory_id
WHERE first_name = 'KATHLEEN' AND last_name = 'ADAMS';
/* Submit Intructions
Submit a .sql file containing an SQL script with queries 
(SQL script should be named YourPittID_sakila.sql). 
*/

