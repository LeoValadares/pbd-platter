SELECT TOP 1 r.Id as IdRestaurant, m.PlatterId, SUM(mo.Quantity) as Quantity
FROM Restaurants as r
JOIN Menu as m ON r.Id = m.RestaurantId
JOIN MenuOrder as mo ON m.Id = mo.MenuId
JOIN Orders as o ON mo.OrderId = o.Id
WHERE o.PaymentId IS NOT NULL
GROUP BY r.Id, m.PlatterId
ORDER BY Quantity DESC