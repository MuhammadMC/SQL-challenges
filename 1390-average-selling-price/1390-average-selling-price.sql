# Write your MySQL query statement below
select
p.product_id,
round(COALESCE (sum(price * units)/ 
nullif(sum(units),0),0),2) as average_price

from  prices as p
left join UnitsSold as u
on p.product_id = u.product_id
and purchase_date between start_date and  end_date 
group by p.product_id
;