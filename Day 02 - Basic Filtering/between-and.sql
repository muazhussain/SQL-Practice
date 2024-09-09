/*
BETWEEN ... AND - Used to filter a range of values
*/

SELECT 
payment_id, amount
FROM payment
WHERE amount BETWEEN 1.99 AND 6.99

SELECT 
payment_id, amount
FROM payment
WHERE amount NOT BETWEEN 1.99 AND 6.99

SELECT 
payment_id, amount, payment_date
FROM payment
WHERE payment_date BETWEEN '2020-01-01' AND '2020-04-30'

SELECT
*
FROM rental
WHERE rental_date BETWEEN '2005-05-25' AND '2005-05-26 23:59'
ORDER BY rental_date ASC


/*
Challenge 1: There have been some faulty payments and you need to help to found out how many payments have been affected.
How many payments have been made on January 26th and 27th 2020 (including entire 27th) with an amount between 1.99 and 3.99?
*/
SELECT
COUNT(*)
FROM payment
WHERE 
(payment_date BETWEEN '2020-01-26 0:00' AND '2020-01-27 23:59')
AND 
(amount BETWEEN 1.99 AND 3.99)