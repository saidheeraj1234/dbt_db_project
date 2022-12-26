{{ config(materialized='table') }}

SELECT *
FROM {{ ref('orders') }} AS o
    JOIN {{ ref('order_items') }} AS oi
        ON o.order_id = oi.order_item_order_id