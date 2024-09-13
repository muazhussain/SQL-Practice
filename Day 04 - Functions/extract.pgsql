/*
EXTRACT - Used to extract parts of timestamp/date
EXTRACT(field from date/time/interval)
*/
SELECT
EXTRACT(MONTH FROM rental_date) AS MONTH,
COUNT(*) AS TOTAL_SALES
FROM rental
GROUP BY EXTRACT(MONTH FROM rental_date)
ORDER BY COUNT(*) DESC

/*
Challenge 1: What's the month with the highest total payment amount?
*/
SELECT
EXTRACT(MONTH FROM payment_date) AS MONTH,
SUM(amount) AS TOTAL_SALES
FROM payment
GROUP BY EXTRACT(MONTH FROM payment_date)
ORDER BY SUM(amount) DESC

/*
Challenge 2: What's the day of week with the highest total payment amount? (0 is Sunday)
*/
SELECT
EXTRACT(DOW FROM payment_date) AS DAY_OF_WEEK,
SUM(amount) AS TOTAL_SALES
FROM payment
GROUP BY EXTRACT(DOW FROM payment_date)
ORDER BY SUM(amount) DESC

/*
Challenge 3: What's the highest amount one customer has spent in a week?
*/
SELECT
customer_id AS CUSTOMER,
SUM(amount) AS TOTAL_SPEND,
EXTRACT(WEEK FROM payment_date) AS WEEK
FROM payment
GROUP BY customer_id, EXTRACT(WEEK FROM payment_date)
ORDER BY SUM(amount) DESC

SELECT
customer_id AS CUSTOMER,
SUM(amount) AS TOTAL_SPEND,
EXTRACT(WEEK FROM payment_date) AS WEEK
FROM payment
GROUP BY CUSTOMER, WEEK
ORDER BY SUM(amount) DESC