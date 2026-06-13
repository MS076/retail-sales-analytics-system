--total product sold
select
	o.ProductID,
	ProductName,
	SUM(Quantity) as Total_product_Sold
from OrderItems o
inner join Products p
on o.ProductID=p.ProductID
group by 
	o.ProductID,
	ProductName