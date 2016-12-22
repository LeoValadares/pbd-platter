SELECT TOP 1 u.Id as UserId, SUM(p.CalorieCount) as CalorieSum
FROM Users as u
JOIN UserPlatter as up ON u.id = up.UserId
JOIN Platters as p ON up.PlatterId = p.Id
GROUP BY u.Id
ORDER BY CalorieSum DESC