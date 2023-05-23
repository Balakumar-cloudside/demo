WITH
   {{config(materialized='view')}}

sale as(
SELECT * FROM {{ref('inter_sales')}} )

SELECT * FROM sale
