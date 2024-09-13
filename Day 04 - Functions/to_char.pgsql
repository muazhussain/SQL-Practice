/*
TO_CHAR - Used to get custom formats timestamp/date/numbers
TO_CHAR(date/time/interval, format)
*/
SELECT
TO_CHAR(rental_date, 'MM YYYY')
FROM rental

SELECT
TO_CHAR(rental_date, 'DD/MM/YYYY')
FROM rental

SELECT
TO_CHAR(rental_date, 'Dy MM YYYY')
FROM rental

SELECT
TO_CHAR(rental_date, 'MONTH')
FROM rental

/*
Challenge 1: You need to sum payments and group in the following formats: 62.86 Fri,24/01/2020, 746.62 May, 2020, 537.14 Thu 02:44
*/
--- 1 ---
SELECT
SUM(amount) AS TOTAL,
TO_CHAR(payment_date, 'Dy, DD/MM/YYYY') AS FORMATTED_DATE
FROM payment
GROUP BY FORMATTED_DATE
ORDER BY TOTAL ASC

--- 2 ---
SELECT
SUM(amount) AS TOTAL,
TO_CHAR(payment_date, 'Mon, YYYY') AS FORMATTED_TIME
FROM payment
GROUP BY FORMATTED_TIME
ORDER BY TOTAL ASC

--- 3 ---
SELECT
SUM(amount) AS TOTAL,
TO_CHAR(payment_date, 'Dy HH:MI') AS FORMATTED_TIME
FROM payment
GROUP BY FORMATTED_TIME
ORDER BY TOTAL DESC