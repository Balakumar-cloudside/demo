WITH
sales_new AS (
SELECT * FROM `cloudside-academy.demo.sales_new`),

s AS ( 
SELECT 
     region,
     country,
     order_id     
FROM sales_new
)

SELECT * FROM s
