/*
ORDER - used to order results based on a column Alphabetically, numerically, chronologically etc
    SELECT
    column_name
    FROM table_name
    ORDER BY column_name ASC or DESC
*/

SELECT 
first_name 
FROM actor
ORDER BY first_name ASC -- ASC or DESC

SELECT 
first_name,
last_name
FROM actor
ORDER BY first_name ASC, last_name DESC

/*
Challenge:
    List of all customers with first name descending and last name ascending.
*/
SELECT 
first_name,
last_name
FROM customer
ORDER BY first_name DESC, last_name ASC

SELECT 
first_name,
last_name
FROM customer
ORDER BY 2 DESC, 1 ASC