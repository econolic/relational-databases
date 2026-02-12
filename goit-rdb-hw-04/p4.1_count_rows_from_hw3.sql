USE hw03;

-- Підрахунок кількості рядків у результаті
SELECT COUNT(*) AS total_rows
FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id;

-- Підрахунок кількості рядків у результаті (LEFT JOIN)
SELECT COUNT(*) AS total_rows
FROM order_details od
LEFT JOIN orders o ON od.order_id = o.id
LEFT JOIN customers c ON o.customer_id = c.id
LEFT JOIN employees e ON o.employee_id = e.employee_id
LEFT JOIN shippers sh ON o.shipper_id = sh.id
LEFT JOIN products p ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN suppliers sup ON p.supplier_id = sup.id;

-- Підрахунок кількості рядків у результаті (RIGHT JOIN)
SELECT COUNT(*) AS total_rows
FROM order_details od
RIGHT JOIN orders o ON od.order_id = o.id
RIGHT JOIN customers c ON o.customer_id = c.id
RIGHT JOIN employees e ON o.employee_id = e.employee_id
RIGHT JOIN shippers sh ON o.shipper_id = sh.id
RIGHT JOIN products p ON od.product_id = p.id
RIGHT JOIN categories cat ON p.category_id = cat.id
RIGHT JOIN suppliers sup ON p.supplier_id = sup.id;

 -- 518 рядків у результаті.
 -- Результат для INNER JOIN, LEFT JOIN та RIGHT JOIN однаковий, оскільки всі записи з order_details мають відповідні записи в інших таблицях.