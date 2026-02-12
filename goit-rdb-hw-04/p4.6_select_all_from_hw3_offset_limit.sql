USE hw03;

SELECT 
    od.id AS detail_id,
    od.quantity,
    o.id AS order_id,
    o.date AS order_date,
    c.name AS customer_name,
    c.contact AS customer_contact,
    c.city AS customer_city,
    c.country AS customer_country,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    e.birthdate AS employee_birthdate,
    sh.name AS shipper_name,
    sh.phone AS shipper_phone,
    p.name AS product_name,
    p.unit AS product_unit,
    p.price AS product_price,
    cat.name AS category_name,
    cat.description AS category_description,
    sup.name AS supplier_name,
    sup.contact AS supplier_contact,
    sup.country AS supplier_country
FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
LIMIT 4 OFFSET 1;