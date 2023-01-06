# Monorepo using Evidence and dbt

## Overall Performance

```totals
select
date_part('year',order_datetime)::string as year_num0,
sum(total_revenue) as tot_revenue_usd
from dbt_archie.customers
group by 1 order by 1
```

This year, total revenue was <Value data={totals} column=tot_revenue_usd/>.

<BarChart title="Revenue by Year" data={totals} x=year_num0 y=tot_revenue_usd/>

## Revenue by Channel

```channels
select * from dbt_archie.channels
```

The top channel was <Value data={channels} column=channel index=0/> which generated <Value data={channels} column=tot_revenue_usd2m index=0/> in revenue.

<BarChart title="Revenue by Channel" data={channels} x=channel y=tot_revenue_usd2m swapXY/>