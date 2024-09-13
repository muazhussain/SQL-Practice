/*
SUBSTRING - Extract substring from string.
SUBSTRING(string from start [for length]
*/
SELECT
SUBSTRING(email FROM 0 FOR POSITION('@' IN email)) as USERNAME,
email
FROM customer

/*
Challenge 1: You need to create an anonymized form of the email addresses in the following way: 'M***.S***@sakilacustomer.org'.
*/
SELECT
LEFT(email, 1) || '***' || SUBSTRING(email FROM POSITION('.' IN email) FOR 2) || '***' || RIGHT(email, 19) AS ANONYMIZED_EMAIL
FROM customer

/*
Challenge 2: In a second query create an anonymized form of the email addresses in the following way: '***Y.S***@sakilacustomer.org'.
*/
SELECT
'***' || SUBSTRING(email FROM POSITION('.' IN email) - 1 FOR 3) || '***' || '@sakilacustomer.org' AS ANONYMIZED_EMAIL
FROM customer