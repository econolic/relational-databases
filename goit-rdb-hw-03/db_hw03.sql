-- Створення бази даних
CREATE DATABASE IF NOT EXISTS hw03;
USE hw03;

-- Створення таблиці products
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    supplier_id INT,
    category_id INT,
    unit VARCHAR(255),
    price DECIMAL(10, 2)
);

-- Завантаження даних з CSV файлу до таблиці products
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv' 
INTO TABLE products 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(id, product_name, supplier_id, category_id, unit, price);

-- Створення таблиці shippers
CREATE TABLE shippers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(24)
);

-- Завантаження даних з CSV файлу до таблиці shippers
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/shippers.csv' 
INTO TABLE shippers 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(id, name, phone);
