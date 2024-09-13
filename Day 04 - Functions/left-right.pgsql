/*
LEFT - Returns the leftmost n characters from a string
RIGHT - Returns the rightmost n characters from a string
*/
SELECT
LEFT(first_name, 2),
first_name,
RIGHT(last_name, 2),
last_name
FROM customer

SELECT
RIGHT(LEFT(first_name, 2), 1)
FROM customer

/*
Challenge 1: Extract the last 5 characters of the email address first.
*/
SELECT
RIGHT(email, 5),
email
FROM customer

/*
Challenge 2: The email address always ends with '.org'.
How can you extract just the dot '.' from the email address?
*/
SELECT
LEFT(RIGHT(email, 4), 1),
email
FROM customer