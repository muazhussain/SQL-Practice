/*
WHERE - Used to FILTERthe data in the output
* Always after the FROM clause
    SELECT
    column_name1,
    column_name2
    FROM table_name
    WHERE condition
*/

SELECT
amount 
FROM payment
WHERE amount = 0.00

SELECT
first_name
FROM customer
WHERE first_name = 'ADAM'

SELECT
amount
FROM payment
WHERE amount > 10.99 ---- > < >= <= <> !=
ORDER BY amount DESC

SELECT
amount
FROM payment
WHERE amount <> 10.99
ORDER BY amount DESC

SELECT
first_name, last_name
FROM customer
WHERE first_name is NULL

/*
Challenge 1: How many payment were made by the customer with customer_id = 100?
*/
SELECT
COUNT(*)
FROM payment
WHERE customer_id = '100'

/*
Challenge 2: What is the last name of our customer with first name 'ERICA'?
*/
SELECT
first_name, last_name
FROM customer
WHERE first_name = 'ERICA'

/*
Challenge 3: The inventory manager asks you how rentals have not been returned yet (return_date is null).
*/
SELECT
COUNT(*)
FROM rental
WHERE return_date IS NULL

/*
Challenge 4: List of all the payment_ids with an amount less than or equal to $2. Include payment_id and the amount.
*/
SELECT
payment_id, amount
FROM payment
WHERE amount <= 2 