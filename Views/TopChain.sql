CREATE VIEW TopChain
AS
	SELECT c.Id, SUM(mo.Quantity) as SoldProducts
	FROM Chains as c
	JOIN Restaurants as r ON c.Id = r.ChainId
	JOIN Menu as m ON r.Id = m.RestaurantId
	JOIN MenuOrder as mo ON m.Id = mo.MenuId
	JOIN Orders as o ON mo.OrderId = o.Id
	WHERE o.PaymentId IS NOT NULL
	GROUP BY c.Id
