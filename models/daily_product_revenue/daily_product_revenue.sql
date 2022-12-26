{{ config(materialized='table') }}

SELECT order_date,
    order_item_product_id,
    round(sum(order_item_subtotal), 2) AS revenue
FROM {{ ref('order_details') }}
WHERE order_status IN ('COMPLETE', 'CLOSED')
GROUP BY order_date, order_item_product_id