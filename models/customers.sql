{{ config(materialized='table') }} 

with cte_orders as (
    select * from {{ source('needful_things','orders') }}
),

reviews as (
    select * from {{ source('needful_things','reviews') }}
)

select
    orders.email,
    upper(orders.first_name) as name,
    orders.last_name,
    orders.address,
    orders.state,
    orders.zipcode,
    orders.order_datetime,
    min(orders.channel) as channel,
    count(orders.email) as total_orders,
    sum(sales) as total_revenue,
    sum(sales)/count(orders.email) as avg_order_value,
    count(reviews.id) as total_reviews,
    avg(reviews.nps_score) as avg_nps

from cte_orders AS orders
left join reviews
    on cte_orders.id = reviews.order_id

group by 1,2,3,4,5,6,7