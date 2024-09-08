/*
LIMIT - used to LIMIT the number of rows in the output
    SELECT
    column_name
    FROM table_name
    LIMIT number_of_rows

    * Always at the very end of your query
*/
SELECT
first_name,
last_name
FROM customer
LIMIT 20
