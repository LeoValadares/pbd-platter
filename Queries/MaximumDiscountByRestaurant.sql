SELECT r.Id, MAX(Discount) as MaximumDiscount
FROM Voucher as v
JOIN Restaurants as r ON v.RestaurantId = r.Id
GROUP BY r.Id