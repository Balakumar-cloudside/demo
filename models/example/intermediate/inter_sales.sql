with

{{config(materialized='ephemeral')}}

inter_sales as(
 SELECT
       AVG(unit_price) as avg_unit_price,
       {{ dbt_utils.star(from=ref('stg_sales'), except=["order_id","unit_price"]) }},
       {{ dbt_utils.star(from=ref('stg_sales_new'), except=["order_id"]) }}
	
FROM
   {{ ref('stg_sales') }} AS  S
RIGHT JOIN
   {{ ref('stg_sales_new') }} AS  N
 ON
  S.order_id = N.order_id
GROUP BY 
       S.item_type,
       S.sales_channel,
       S.total_cost,
       N.region,
       N.country
)
		
Select * from inter_sales
