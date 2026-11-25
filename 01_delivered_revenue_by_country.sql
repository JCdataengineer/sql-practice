Total revenue by country—considering only delivered orders—including only countries with more than 100 delivered orders, sorted by revenue in descending order.

SELECT 
	country,
	SUM (quantity * unit_price)		AS total_revenue
FROM orders
WHERE order_status = 'delivered'
GROUP BY country
HAVING COUNT (order_id) > 100
ORDER BY total_revenue DESC;
