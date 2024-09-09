/*
AND/OR - Used to connecttwo conditions
    SELECT
    column_name1,
    column_name2
    FROM table_name
    WHERE condition
    AND/OR condition
*/

SELECT
*
FROM payment
WHERE amount = 10.99 OR amount = 9.99

SELECT
*
FROM payment
WHERE amount = 10.99 OR (amount = 9.99 AND customer_id = 426)

/*
Challenge 1: List of all the payment of the customer 322, 346 and 354 where the amount is either less than $2 or greater than $10.
It should be ordered by the customer first (ascending) and then as second condition order by amount in a descending order.
*/
SELECT 
*
FROM payment
WHERE (customer_id = 322 OR customer_id = 346 OR customer_id = 354) AND (amount < 2 OR amount > 10)
ORDER BY customer_id ASC, amount DESC