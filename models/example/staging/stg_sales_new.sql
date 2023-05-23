WITH
sales_new AS (
SELECT * FROM `cloudside-academy.demo.sales`),

s AS ( 
SELECT 
     region,
     country,
     order_id     
FROM sales_new
)

SELECT * FROM s;

