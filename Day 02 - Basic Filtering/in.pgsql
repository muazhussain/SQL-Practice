/*
IN - Used to compare if a value exists in a list
    SELECT
    column_name1,
    column_name2
    FROM table_name
    WHERE column_name IN (value1, value2)
*/

SELECT 
*
FROM payment
WHERE amount IN (1.99, 3.99, 9.99)

SELECT
*
FROM payment
WHERE amount NOT IN (10.99, 11.99)

/*
Challenge 1: There have been 6 complaints of customers about their
payments.
Write a SQL query to get a list of the concerned payments!
customer_id: 12,25,67,93,124,234
The concerned payments are all the payments of these
customers with amounts 4.99, 7.99 and 9.99 in January 2020.
*/
SELECT
*
FROM payment
WHERE 
customer_id IN (12,25,67,93,124,234) 
AND 
amount IN (4.99, 7.99, 9.99)
AND 
payment_date BETWEEN '2020-01-01' AND '2020-01-31 23:59'