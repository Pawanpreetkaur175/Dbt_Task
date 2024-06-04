{{ config(materialized='table') }}

SELECT
     o.order_id,
     c.first_name,
     c.last_name,
     o.order_date,
     o.total_amount
FROM {{source('PAWANPREET_DIT45604','ORDERS')}} o
JOIN {{source('PAWANPREET_DIT45604', 'CUSTOMER')}} c ON o.customer_id = c.customer_id


