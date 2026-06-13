--Find products that sold more than 2 units
select
o.ProductID,p.ProductName,sum(Quantity) as  total_quantity
from OrderItems o
left join Products p
on o.ProductID=p.ProductID
group by p.ProductName,o.ProductID
having sum(Quantity) > 2
