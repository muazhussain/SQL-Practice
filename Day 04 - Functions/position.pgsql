/*
POSITION - Returns the position of the first occurrence of a substring in a string
*/
SELECT
LEFT(email, POSITION('@' IN email) - 1) AS USERNAME,
email
FROM customer

SELECT
LEFT(email, POSITION(last_name IN email) - 2) AS FIRST_NAME,
email
FROM customer

/*
Challenge 1: In this challenge you have only the email address and the last name of the customers.
You need to extract the first name from the email address and
concatenate it with the last name. It should be in the form:
"Last name, First name".
*/
SELECT
last_name || ', ' || LEFT(email, POSITION('.' IN email) - 1),
email
FROM customer

