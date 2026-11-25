Classify each order as 'Large' (revenue >= 200), 'Medium' (>= 50), or 'Small'. Exclude cancelled orders. Count the orders and sum the revenue for each size.

WITH classification AS (
	SELECT *,
	(quantity * unit_price)		AS total_revenue,
	CASE 
	WHEN (quantity * unit_price) >= 200 THEN 'Large'
	WHEN (quantity * unit_price) >= 50 THEN 'Medium'
	ELSE 'Small'
	END AS order_classification
FROM orders
)
SELECT 
	order_classification,
	COUNT (*) 	AS orders_per_class,
	SUM (total_revenue)		AS revenue_per_class

FROM classification
WHERE order_status != 'canceled'
GROUP BY order_classification;