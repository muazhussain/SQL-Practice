/*
HAVING - Used to FILTER Groupings BY aggregations
*/

SELECT
staff_id,
SUM(amount),
DATE(payment_date),
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id, DATE(payment_date)
HAVING COUNT(*) > 200
ORDER BY COUNT(*) DESC

SELECT
staff_id,
SUM(amount),
DATE(payment_date),
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id, DATE(payment_date)
HAVING COUNT(*) > 200 AND SUM(amount) > 1200
ORDER BY COUNT(*) DESC


/*
Challenge 1: In 2020, April 28, 29 and 30 were days with very high revenue. That's why we want to focus in this task only on these days
(filter accordingly).
Find out what is the average payment amount grouped by customer and day– consider only the days/customers with more than 1 payment (per customer and day).
Order by the average amount in a descending order.
*/
SELECT
customer_id,
ROUND(AVG(amount), 2) AS AVERAGE_AMOUNT,
DATE(payment_date),
COUNT(*) AS NUMBER_OF_PAYMENT
FROM payment
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*) > 1 AND DATE(payment_date) IN('2020-04-28', '2020-04-29', '2020-04-30')
ORDER BY AVG(amount) DESC, DATE(payment_date) ASC