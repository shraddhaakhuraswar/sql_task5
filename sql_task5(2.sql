--INNER JOIN, LEFT JOIN, multi join 2:--
select * from sales
select * from product 
	
select p.sub_category as product_category,s.order_date,avg(s.quantity)as avg_qty_sold,sum(s.sales) as total_sales
from product as p
inner join sales as s
on p.product_id=s.product_id
group by p.sub_category,s.order_date

select * from customer	
select * from sales
	
select c.customer_id,sum(s.profit )
from customer as c
left join sales as s
on c.customer_id=s.customer_id
group by c.customer_id

select * from product 
select * from customer
select * from sales

select c.state,s.ship_mode,p.category,sum(s.profit) as sum_of_profit
from sales as s
inner join product as p
on s.product_id=p.product_id
inner join customer as c
on s.customer_id=c.customer_id
group by c.state,s.ship_mode,p.category
having sum(s.sales)>300
order by sum(s.sales)asc

select * from product 
select * from customer
select * from sales
	
select c.city,s.order_date,p.category,s.ship_mode ,sum(s.sales) as sum_of_sales,avg(c.age)
from sales as s
inner join product as p
on s.product_id=p.product_id
inner join customer as c
on s.customer_id=c.customer_id
where s.order_date between '2015-1-1' and '2017-12-31'
group by c.city,s.order_date,p.category,s.ship_mode
order by s.order_date asc
