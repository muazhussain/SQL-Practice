/*
GROUP-BY - Used to GROUP aggregations BYspecific columns
*/

SELECT
customer_id,
SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC

/*
Challenge 1: Which of the two is responsible for a higher overall payment amount?
*/
SELECT
staff_id,
SUM(amount) AS TOTAL,
COUNT(amount) AS COUNT
FROM payment
GROUP BY staff_id
ORDER BY SUM(amount)
LIMIT 2

/*
Challenge 2: How do these amounts change if we don't consider amounts equal to 0? (from challenge 1)
*/
SELECT
staff_id,
SUM(amount) AS TOTAL,
COUNT(amount) AS COUNT
FROM payment
WHERE amount <> 0
GROUP BY staff_id
ORDER BY SUM(amount)
LIMIT 2

/*
Challenge 3: Which employee had the highest sales amount in a single day?
*/
SELECT
staff_id,
SUM(amount) AS SALES,
COUNT(*),
DATE(payment_date) AS PAYMENT_DATE
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC
LIMIT 1

/*
Challenge 4: Which employee had the most sales in a single day (not counting payments with amount = 0?)
*/
SELECT
staff_id,
SUM(amount),
DATE(payment_date),
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY COUNT(*) DESC
LIMIT 1