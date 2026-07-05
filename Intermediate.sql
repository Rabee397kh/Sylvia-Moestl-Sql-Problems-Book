use Northwind_SPP


select CategoryName,count(productname) as count  from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
group by CategoryName
order by count(productname) desc


select country,city,count(customerid) from Customers
group by Country ,city
order by count(customerid) desc


select ProductID,ProductName,UnitsInStock,ReorderLevel from Products
where UnitsInStock < ReorderLevel


select ProductID,ProductName,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued from Products
where UnitsInStock + UnitsOnOrder <= ReorderLevel and Discontinued = 0


select CustomerID,CompanyName,Region from Customers
order by 
 case when Region is null then 1 else 0 end,
 region asc,CustomerID


 select top 3 avg(freight) as average,ShipCountry  from orders
 where orderdate >=  DATEADD(yy,-1,(select max(orderdate) from orders))
 group by ShipCountry
 order by avg(freight) desc


 
