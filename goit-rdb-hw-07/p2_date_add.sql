-- Запит, що додає 1 день до атрибута date таблиці orders
USE hw03;

SELECT
	id,
	date,
	DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;
