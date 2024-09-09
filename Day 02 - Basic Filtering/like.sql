/*
LIKE - Used to filter by matching against a pattern
_ -> Single character
% -> Any sequence of characters
*/
SELECT
*
FROM actor
WHERE first_name LIKE 'A%'

SELECT
*
FROM actor
WHERE first_name ILIKE 'a%' --- ILIKE is case insensitive

SELECT
*
FROM customer
WHERE first_name LIKE '%A%'

SELECT
*
FROM customer
WHERE first_name LIKE '_C%'

SELECT
*
FROM customer
WHERE first_name LIKE '__B%'

/*
Challenge 1: How many movies are there that contain the "Documentary" in
the description?
*/
SELECT
COUNT(*)
FROM film
WHERE description LIKE '%Documentary%'

/*
Challenge 2: How many customers are there with a first name that is 3 letters long and either an 'X' or a 'Y' as the last letter in the last name?
*/
SELECT
COUNT(*)
FROM customer
WHERE 
first_name LIKE '___'
AND
(last_name LIKE '%X' OR last_name LIKE '%Y')