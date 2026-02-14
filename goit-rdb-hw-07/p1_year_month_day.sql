-- Запит, що витягує рік, місяць і день з атрибута date таблиці orders
USE hw03;

SELECT
	id,
	date,
	YEAR(date) AS order_year,
	MONTH(date) AS order_month,
	DAY(date) AS order_day
FROM orders;
