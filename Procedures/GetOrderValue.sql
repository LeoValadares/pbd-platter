CREATE FUNCTION GetOrderValue(@OrderId int)
RETURNS float
BEGIN
	return (SELECT SUM(m.Price * mo.Quantity)
	FROM MenuOrder as mo
	JOIN Orders as o ON mo.OrderId = o.Id
	JOIN Menu as m ON mo.MenuId = m.id
	WHERE o.Id = @OrderId)
END
