USE hw03;

SELECT
	filtered.order_id,
	AVG(filtered.quantity) AS avg_quantity
FROM (
	SELECT
		order_id,
		quantity
	FROM order_details
	WHERE quantity > 10
) AS filtered
GROUP BY filtered.order_id;
