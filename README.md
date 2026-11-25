# SQL Practice

Practice exercises I wrote while learning SQL. They are not a project:
they run against an example `orders` table (e-commerce orders) and use
BigQuery-style syntax.

## Exercises

| File | What it practices |
|---|---|
| 01_delivered_revenue_by_country.sql | WHERE, GROUP BY, HAVING with COUNT, ORDER BY |
| 02_order_size_classification.sql | CASE WHEN inside a CTE, counting per category |
| 03_cancellation_return_rates.sql | Conditional aggregation, SAFE_DIVIDE |
| 04_revenue_share_by_payment_method.sql | Scalar subquery as a denominator |
| 05_above_average_orders.sql | Chained CTEs, scalar subquery in WHERE |

## Notes

- The queries were written and reviewed by hand, without running them
  on a real database yet.
- Sample data and a PostgreSQL version are coming later.
