select
p.ProductID,ProductName,isnull(SUM(o.Quantity),0) total_sale
from Products p
left join OrderItems o
on o.ProductID=p.productid
group by p.ProductID,ProductName
having isnull(SUM(o.Quantity),0) = 0
