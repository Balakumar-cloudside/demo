WITH
sales AS (
SELECT * FROM `cloudside-academy.demo.sales`),

n AS ( 
SELECT 
     unit_price AS avg_unit_price,
     item_type,
     sales_channel,
     total_cost,
     order_id     
FROM sales
)

SELECT * FROM n
