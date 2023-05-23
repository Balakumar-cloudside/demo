WITH
   {{config(materialized='table')}}

sale as(
SELECT * FROM {{ref('inter_sales')}} )

SELECT * FROM sale
