SELECT r.Id as RestaurantId, r.Name as RestaurantName, COUNT(ur.Id) as Workers
FROM UserRoles as ur
JOIN Restaurants as r ON ur.RestaurantId = r.Id
GROUP BY r.Id, r.Name
