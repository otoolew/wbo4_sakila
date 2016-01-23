# wbo4_sakila

INFSCI 1017 – Database Systems – Spring 2016
Homework 2 – SQL
Due on Friday, January 22 by midnight.

Task 1 (25 points): Write a query that produces a list of documentary movies (where movie category is ‘Documentary’) and a movie description contains the word ‘Drama’.  You will have to create a triple join between category, film_category, and category tables.  Your result should contain the following columns with meaningful aliases:
Category Name
Film Title 
Film Description
Release Year
Hint:  you will need to create aliases for all tables involved in this query…

Task 2 (25 points): Write a query that produces a list of movies an actress by the name of JULIA MCQUEEN played a role.  You will have to create a triple join between film, film_actor, and actor tables.  Your result should contain the following columns with meaningful aliases:
Film Title
Actor name (in a single column, last name and first name concatenated into a single string and separated by a comma).

Task 3 (10 points):  Modify the query in a previous task to list all actors who played in a movie called “AMADEUS HOLY”.  Do not modify the original query – make a copy of it and modify that copy.

Task 4 (40 points): Write a query that produces a list of movies rented by KATHLEEN ADAMS.  You will have to join the following 4 tables:
customer
rental
inventory
film
You can select all columns (SELECT *)



