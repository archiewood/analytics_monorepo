# Using Evidence with dbt


```customers
select *
from dbt_archie.customers
```



```channels
select
channel,
sum(total_revenue) as tot_revenue_usd
from ${customers}
group by 1
order by 2 desc
```

```totals
select
date_trunc('year',order_datetime) as year,
sum(total_revenue) as tot_revenue_usd
from ${customers}
group by 1 order by 1
```

<BarChart title="Revenue by Channel" data={channels} x=channel y=tot_revenue_usd swapXY/>

This year, total revenue was <Value data={totals} column=tot_revenue_usd/>.

<BarChart title="Revenue by Year" data={totals} x=year y=tot_revenue_usd/>