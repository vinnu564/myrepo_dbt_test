{{config (materialized='table')}}

select product_id, product_name, round(unit_price) as rounded_price from RAW_DATA.PRODUCTS