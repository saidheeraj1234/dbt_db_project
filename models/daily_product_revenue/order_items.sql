{{ config(materialized='table') }}

SELECT * FROM retail.order_items_cloud