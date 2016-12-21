CREATE FUNCTION CaloriesOnDay(@UserId int, @Day date)
RETURNS float
BEGIN
	return (SELECT SUM(p.CalorieCount)
	FROM UserPlatter AS up
	JOIN Platters AS p ON up.PlatterId = p.Id
	WHERE CAST(up.PlatterDate AS date)=@Day)
END
