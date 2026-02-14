-- Запит, що показує кількість секунд (timestamp) для атрибута date таблиці orders
USE hw03;

SELECT
	id,
	date,
	UNIX_TIMESTAMP(date) AS date_timestamp_seconds
FROM orders;
