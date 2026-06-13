SELECT
Customers.CustomerID,
Customers.FullName,
Orders.OrderID,
Orders.TotalCost,
Menus.MenuName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menus
ON Orders.MenuID = Menus.MenuID
WHERE Orders.TotalCost > 150;
