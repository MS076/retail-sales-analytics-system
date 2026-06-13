--total revenue
select
	o.ProductID,
	ProductName,
	SUM(Quantity) as Total_Quantity_Sold,
	o.Price,
	SUM(Quantity) * o.price as total_revenue
from OrderItems o
inner join Products p
on o.ProductID=p.ProductID
group by 
	o.ProductID,
	ProductName,
	o.Price
order by total_revenue desc
