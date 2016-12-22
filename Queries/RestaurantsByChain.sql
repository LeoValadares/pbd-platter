SELECT c.Id, c.Name, COUNT(r.Id) as RestaurantQuantity
FROM Chains as c
JOIN Restaurants as r ON c.Id = r.ChainId
GROUP BY c.Id, c.Name
