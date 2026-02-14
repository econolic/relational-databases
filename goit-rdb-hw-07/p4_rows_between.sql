-- Запит, що рахує кількість рядків orders у заданому діапазоні date
USE hw03;

SELECT
	COUNT(*) AS orders_count_between_dates
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';
