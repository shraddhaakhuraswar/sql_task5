
--group by--
select * from customer
select customer_name ,min(age),city from customer group by city,customer_name
--having--
select order_id ,sum(sales)as "total sales" from sales
group by order_id 
having sum(sales)>1000
select * from sales

--where
	select * from sales
select order_id,sales from sales where sales >10000

--case--
select order_id,customer_id,sales,
case
when sales<300 then 'economy'
when sales <500 then 'moderate'
else 'costly'
END as "sales category"
from sales

--between--
select * from sales where order_date between '2015-01-01' and '2016-01-01'
order by sales desc

--avg,min,max
select 
avg(sales)as avg_sale,
max(sales)as max_sales,
min(sales)as min_sales
from sales group by sales


