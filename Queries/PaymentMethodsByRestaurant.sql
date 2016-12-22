SELECT r.Id as RestaurantId, pm.Id as PaymentMethodId, pm.Name, COUNT(pm.Id) as TimeUsed
FROM PaymentMethod as pm
JOIN Payment as p ON pm.Id = p.MethodId
JOIN Orders as o ON p.Id = o.PaymentId
JOIN MenuOrder as mo ON o.Id = mo.OrderId
JOIN Menu as m ON mo.MenuId = m.Id
JOIN Restaurants as r ON m.RestaurantId = r.Id
GROUP BY pm.Id, pm.Name, r.Id
