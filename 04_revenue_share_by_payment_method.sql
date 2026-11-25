For each `payment_method`, calculate what percentage of the total revenue from `delivered` orders that method represents, using a scalar subquery.

SELECT payment_method,
	SAFE_DIVIDE(SUM (quantity * unit_price), (SELECT SUM (quantity * unit_price) FROM orders WHERE order_status = 'delivered')) * 100 AS percentage
FROM orders
WHERE order_status = 'delivered'
GROUP BY payment_method;
