Using two chained CTEs: the first calculates revenue per order, and the second filters for orders where the revenue exceeds the overall average. Then, it displays the average revenue of those orders, broken down by category.

WITH 
revenue_per_order AS (
SELECT *,
quantity * unit_price AS revenue
FROM orders
),
above_average AS (
SELECT *
FROM revenue_per_order
WHERE revenue > (SELECT AVG(revenue) FROM revenue_per_order)
)
SELECT category,
	AVG (revenue) AS avg_revenue
FROM above_average
GROUP BY category;

