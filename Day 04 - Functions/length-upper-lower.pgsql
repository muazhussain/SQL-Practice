/*
UPPER - Transform to upper case
*/
SELECT
UPPER(email)
FROM customer

/*
LOWER - Transform to lower case
*/
SELECT
LOWER(email)
FROM customer

/*
LENGTH - Calculate Length
*/
SELECT
LENGTH(email)
FROM customer

SELECT
customer_id,
LENGTH(email) AS EMAIL_LENGTH
FROM customer
WHERE LENGTH(email) < 30

/*
Challenge 1: In the email system there was a problem with names where either the first name or the last name is more than 10 characters long.
Find these customers and output the list of these first and last names in all lower case.
*/
SELECT
customer_id,
first_name,
last_name,
LOWER(first_name) AS FIRST_NAME_LOWER,
LOWER(last_name) AS LAST_NAME_LOWER,
LENGTH(first_name) AS FIRST_NAME_LENGTH,
LENGTH(last_name) AS LAST_NAME_LENGTH
FROM customer
WHERE LENGTH(first_name) > 10 OR LENGTH(last_name) > 10