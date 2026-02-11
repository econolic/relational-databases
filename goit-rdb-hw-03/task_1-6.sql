-- 1. Всі стовпчики з таблиці products
SELECT * FROM hw03.products;

-- 2. Тільки стовпчики name, phone з таблиці shippers
SELECT name, phone FROM hw03.shippers;

-- 3. Середнє, максимальне та мінімальне значення стовпчика price таблиці products
SELECT 
    AVG(price) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM hw03.products;

-- 4. Унікальні значення колонок category_id та price таблиці products, відсортовані за спаданням ціни, обмежені 10 записами
SELECT DISTINCT category_id, price 
FROM hw03.products
ORDER BY price DESC
LIMIT 10;

-- 5. Кількість продуктів (рядків), які знаходяться в цінових межах від 20 до 100
SELECT COUNT(*) AS product_count
FROM hw03.products
WHERE price BETWEEN 20 AND 100;

-- 6. Кількість продуктів (рядків) та середня ціна (price) у кожного постачальника (supplier_id)
SELECT supplier_id, COUNT(*) AS product_count, AVG(price) AS average_price
FROM hw03.products
GROUP BY supplier_id;