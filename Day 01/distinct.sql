/*
    DISTINCT - used to SELECT the DISTINCT values in a table
    SELECT DISTINCT
    column_name
    FROM table_name
*/
SELECT DISTINCT
first_name
FROM actor

/*
Challenge:
    List the different prices that have been paid.
*/
SELECT DISTINCT
amount
FROM payment
ORDER BY amount DESC