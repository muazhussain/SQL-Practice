--- CURRENT DATE ---
SELECT CURRENT_DATE

--- CURRENT TIMESTAMP ---
SELECT CURRENT_TIMESTAMP

SELECT 
rental_date,
CURRENT_TIMESTAMP-rental_date
FROM rental

SELECT 
rental_date,
return_date,
EXTRACT(DAY FROM return_date-rental_date)
FROM rental

SELECT 
rental_date,
return_date,
EXTRACT(DAY FROM return_date-rental_date)*24 + EXTRACT(HOUR FROM return_date-rental_date) AS HOURS
FROM rental
ORDER BY HOURS ASC

SELECT 
rental_date,
return_date,
EXTRACT(DAY FROM return_date-rental_date)*24 + EXTRACT(HOUR FROM return_date-rental_date) || ' Hours' AS HOURS
FROM rental
ORDER BY HOURS ASC

/*
Challenge 1: Create a list for the suppcity team of all rental durations of customer with customer_id 35.
*/
SELECT
customer_id AS CUSTOMER,
return_date-rental_date AS RENTAL_DURATION
FROM rental
WHERE customer_id = 35

/*
Challenge 2: Find out for the suppcity team which customer has the longest average rental duration?
*/
SELECT
customer_id AS CUSTOMER,
AVG(return_date-rental_date) AS AVERAGE_RENTAL_DURATION
FROM rental
GROUP BY CUSTOMER
ORDER BY AVERAGE_RENTAL_DURATION DESC