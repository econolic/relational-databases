-- Запит, що виводить id, date та JSON-об'єкт для кожного рядка таблиці orders
USE hw03;

SELECT
	id,
	date,
	JSON_OBJECT('id', id, 'date', date) AS order_json
FROM orders;
