-- Групування за категорією з підрахунком кількості рядків та середньої кількості товару
USE hw03;

SELECT 
    cat.name AS category_name,
    COUNT(*) AS row_count,
    AVG(od.quantity) AS avg_quantity
FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
WHERE e.employee_id > 3 AND e.employee_id <= 10
GROUP BY cat.name
ORDER BY cat.name;