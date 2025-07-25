{{config (materialized='table')}}

select customer_id,replace(split(customer_name,' ')[0],'"','') as first_name,
replace(split(customer_name,' ')[1],'"','') as last_name,address
from RAW_DATA.customers