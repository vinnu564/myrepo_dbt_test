{{config(materialized='view')}}

select product_name,sum(rounded_price*quantity) as revenue from
CURATED_DATA.DIM_PRODUCTS P inner join CURATED_DATA.FACT_ORDERS O
on P.product_id=o.product_id
group by product_name