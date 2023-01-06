{{ config(materialized='table') }} 

with customers as (
    select * from {{ ref('customers') }}
)

select
channel,
sum(total_revenue) as tot_revenue_usd2m
from customers
group by 1
order by 2 desc
