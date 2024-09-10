/*
Challenge 1: Create a list of all the distinct districts customers are from.
*/
SELECT DISTINCT 
district
FROM address

/*
Challenge 2: What is the latest rental date?
*/
SELECT
rental_date
FROM rental
ORDER BY rental_date DESC
LIMIT 1

/*
Challenge 3: How many films does the company have?
*/
SELECT
COUNT(*)
FROM film

/*
Challenge 4: How many distinct last names of the customers are there?
*/
SELECT
COUNT(DISTINCT last_name)
FROM customer