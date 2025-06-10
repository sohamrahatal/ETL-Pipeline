select * from df_orders;
select * from information_schema.columns where table_schema='public';
-- drop table df_orders;

create table if not exists df_orders (
	order_id int primary key,
	order_date date,
	ship_mode varchar(20),
	segment varchar(20),
	country varchar(20),
	city varchar(20),
	state varchar(20),
	postal_code varchar(20),
	region varchar(20),
	category varchar(20),
	sub_category varchar(20),
	product_id varchar(50),
	quantity int,
	discount decimal(7,2),
	sale_price decimal(7,2),
	profit decimal(7,2)
);


--find top 10 highest reveue generating products 

select product_id, sum(sale_price) revenue
from df_orders
group by product_id
order by revenue desc
limit 10;


--find top 5 highest selling products in each region

with cte as (select region, product_id, sum(sale_price) revenue
			 from df_orders
			 group by region,product_id)
select *
from (	select *,
		row_number() over(partition by region order by revenue desc) rn
		from cte)
where rn <= 5;


--find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023

with cte as (
    select 
        extract(year from order_date) as order_year,
        extract(month from order_date) as order_month,
        sum(sale_price) as sales
    from df_orders
    group by extract(year from order_date), extract(month from order_date)
)
select 
    order_month,
    sum(case when order_year = 2022 then sales else 0 end) as sales_2022,
    sum(case when order_year = 2023 then sales else 0 end) as sales_2023
from cte
group by order_month
order by order_month;


--for each category which month had highest sales 
with cte as (
    select 
        category,
        to_char(order_date, 'YYYY-MM') as order_year_month,
        sum(sale_price) as sales
    from df_orders
    group by category, to_char(order_date, 'YYYY-MM')
)
select *
from (
    select *,
           row_number() over (partition by category order by sales desc) as rn
    from cte
) a
where rn = 1;


--which sub category had highest growth by profit in 2023 compare to 2022

with cte as (
    select 
        sub_category,
        extract(year from order_date) as order_year,
        sum(profit) as profit
    from df_orders
    group by sub_category, extract(year from order_date)
),
cte2 as (
    select 
        sub_category,
        sum(case when order_year = 2022 then profit else 0 end) as profit_2022,
        sum(case when order_year = 2023 then profit else 0 end) as profit_2023
    from cte
    group by sub_category
)
select *
       , (profit_2023 - profit_2022) as profit_diff
from cte2
order by profit_diff desc
limit 1;