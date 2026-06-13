--inventory status report

select
	p.ProductID,
	ProductName,
	StockQuantity,
	SUM(Isnull(Quantity,0)) as sold,
	case 
		when (StockQuantity-SUM(Quantity))<15 then 'LOW'
		when (StockQuantity-SUM(Quantity))<50 then 'Medium'
		else 'sufficient stock'
	end StockStatus

from Products p 
left join OrderItems o
on o.ProductID=p.ProductID
group by 
	p.ProductID,
	ProductName,
	StockQuantity