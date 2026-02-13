USE hw03;

DROP FUNCTION IF EXISTS divide_float;

DELIMITER //

CREATE FUNCTION divide_float(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	IF b = 0 THEN
		RETURN NULL;
	END IF;

	RETURN a / b;
END //

DELIMITER ;

SELECT
	od.id,
	od.quantity,
	divide_float(od.quantity, PI()) AS quantity_divided
FROM order_details od;