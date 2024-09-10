/*
SELECT - used to select and return data
    SELECT
    column_name
    FROM table_name
*/

SELECT 
first_name 
FROM actor

SELECT 
first_name, last_name
FROM actor

SELECT * FROM actor

/*
Challenge:
    List of all customers with first name, last name and the customer's email address.
*/
SELECT 
first_name, last_name, email
FROM customer