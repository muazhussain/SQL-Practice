/*
AGGREGATE-FUNCTION - Aggregate values in multiple rows to one value
*/

SELECT
SUM(amount) as SUM,
MIN(amount) as MIN,
MAX(amount) as MAX,
ROUND(AVG(amount), 3) as AVG,
COUNT(amount) as TOTAL
FROM payment

/*
Challenge 1: Write a query to see the
• Minimum
• Maximum
• Average (rounded)
• Sum
of the replacement cost of the films.
*/
SELECT
MIN(replacement_cost) AS MINIMUM_REPLACEMENT_COST,
MAX(replacement_cost) AS MAXIMUM_REPLACEMENT_COST,
ROUND(AVG(replacement_cost), 3) AS AVERAGE_REPLACEMENT_COST,
SUM(replacement_cost) AS TOTAL_REPLACEMENT_COST
FROM film 