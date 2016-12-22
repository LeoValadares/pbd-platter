SELECT r.Id, r.Name, AVG(m.Price) AveragePrice
FROM Restaurants as r
JOIN Menu as m ON r.Id = m.RestaurantId
GROUP BY r.Id, r.Name
