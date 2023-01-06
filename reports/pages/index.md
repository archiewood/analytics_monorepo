# Monorepo with Evidence and dbt

```totals
select
date_part('year',order_datetime)::string as year_num0,
sum(total_revenue) as tot_revenue_usd
from dbt_archie.customers
group by 1 order by 1
```

This year, total revenue was <Value data={totals} column=tot_revenue_usd/>.

<BarChart title="Revenue by Year" data={totals} x=year_num0 y=tot_revenue_usd/>