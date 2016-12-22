CREATE VIEW MonthlyProfit
AS
	SELECT r.Id as RestaurantId, SUM(p.Value) as Profit, Year(p.PaymentDate) as PaymentYear, Month(p.PaymentDate) as PaymentMonth
	FROM Orders as o
	JOIN Payment as p ON o.PaymentId = p.Id
	JOIN MenuOrder as mo ON o.Id = mo.OrderId
	JOIN Menu as m ON mo.MenuId = m.Id
	JOIN Restaurants as r ON m.RestaurantId = r.Id
	GROUP BY r.Id, Year(p.PaymentDate), Month(p.PaymentDate)
