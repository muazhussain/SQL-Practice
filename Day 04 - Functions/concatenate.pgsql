/*
|| - Concatenation operator
CONCAT - Used to combine two or more strings
*/
SELECT
LEFT(first_name, 1) || LEFT(last_name, 1) AS INITIALS,
first_name,
last_name
FROM customer

/*
Challenge 1: You need to create anonymized version of email address. First character followed by *** and then last part starting with '@'. Example: M***@example.com
Note: Email address always ends with '@sakilacustomer.org'.
*/
SELECT
CONCAT(LEFT(first_name, 1), '***', '@sakilacustomer.org') AS ANONYMIZED_EMAIL,
email
FROM customer

SELECT
LEFT(first_name, 1) || '***' || '@sakilacustomer.org' AS ANONYMIZED_EMAIL,
email
FROM customer