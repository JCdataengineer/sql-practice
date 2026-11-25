By category, calculate the cancellation rate and the return rate using conditional aggregation and SAFE_DIVIDE. Show only categories with at least 50 orders.

SELECT category, 
SAFE_DIVIDE (COUNT (CASE WHEN order_status = 'canceled' THEN order_status END), COUNT (order_id)) AS cancelation_rate,
SAFE_DIVIDE (COUNT (CASE WHEN order_status = 'returned' THEN order_status END), COUNT (order_id)) AS return_rate
FROM orders
GROUP BY category
HAVING COUNT (order_id) >= 50;