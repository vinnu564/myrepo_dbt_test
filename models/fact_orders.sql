{{config(materialized='incremental',
unique_key='order_id',
query_tag='orders_model')}}

select order_id,product_id,customer_id,quantity,order_date,year(order_date) as order_year,month(order_date) as order_month 
from DB1.RAW_DATA.ORDERS

{% if is_incremental() %}
-- this filter will only be applied on an incremental run
where order_date > (select max(order_date) from {{this}} )
{% end   if %}