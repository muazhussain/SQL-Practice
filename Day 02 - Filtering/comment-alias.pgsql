/*
Comment - Comment to make code more readable & understandable
--- -> Single line comment
/* ... */ -> Multi line comment
*/

/*
Alias - Used to rename columns
*/

SELECT
COUNT(*) AS number_of_customer -- alias (single line comment)
FROM customer
WHERE 
first_name LIKE '___'
AND
(last_name LIKE '%X' OR last_name LIKE '%Y')

SELECT
payment_id AS invoice_id
FROM payment