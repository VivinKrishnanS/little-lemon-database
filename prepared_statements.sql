PREPARE GetOrderDetail FROM
'SELECT OrderID, Quantity, TotalCost
FROM Orders
WHERE CustomerID = ?';

SET @customer_id = 1;

EXECUTE GetOrderDetail USING @customer_id;
