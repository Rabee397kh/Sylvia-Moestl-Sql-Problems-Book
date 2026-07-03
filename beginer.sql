select * from Shippers

select categoryname , description from Categories


select firstname , lastname ,hiredate from Employees 
where Title = 'sales representative' and 
Country = 'usa'


select count(*) as count from Orders where EmployeeID = 5


select SupplierID,ContactName,ContactTitle from Suppliers
where ContactTitle != 'marketing manager'


select productid,ProductName from Products
where ProductName like '%queso%'


select orderid,customerid,shipcountry from Orders
where ShipCountry in ('brazil','mexico','argentina','venezuela')



select firstname, lastname,title,birthdate from Employees
order by BirthDate 

select firstname, lastname,title,cast(birthdate as date) from Employees
order by BirthDate 


select firstname ,lastname, (firstname +' '+ lastname) as fullname
from Employees


select orderid,productid,UnitPrice,Quantity,
(UnitPrice*Quantity) as totalprice
from OrderDetails
order by orderid , productid


select numberofcutomers = count(CustomerID)  from Customers


select min(orderdate) from Orders

select country from Customers  
group by(country)

select ContactTitle,count(contacttitle) as count from Customers
group by (ContactTitle)
order by count desc

select productid,productname,Suppliers.CompanyName from Products  join Suppliers
on Products.SupplierID = Suppliers.SupplierID


select orderid,cast(orderdate as date) as date,CompanyName from Orders 
 join Shippers on Orders.ShipVia = Shippers.ShipperID
where OrderID < 10300