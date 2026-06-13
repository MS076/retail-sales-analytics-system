create view vw_ProductRevenue
as
select 
	p.productid,
	p.productname,
	isnull(SUM(o.quantity),0) as TotalSold,
	isnull(SUM(p.Price*o.quantity),0) as revenue
from Products p
left join OrderItems o
	on p.ProductID=o.productid
group by
	p.productid,p.productname;