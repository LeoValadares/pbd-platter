CREATE TRIGGER CheckGoals
ON UserPlatter
FOR INSERT
AS
BEGIN
	UPDATE UserGoal
	SET Completed = (
		SELECT CASE
			WHEN SUM(ip.Quantity) >= ug.Quantity THEN 1
			ELSE 0
		END
		FROM UserPlatter as up
		JOIN Platters as p ON up.PlatterId = p.Id
		JOIN PlatterIngredient as pin ON p.Id = pin.PlatterId
		JOIN Ingredient as i ON pin.IngredientId = i.Id
		JOIN IngredientProperty as ip ON i.Id = ip.IngredientId
		JOIN NutritionProperty as np ON ip.NutritionPropertyId = np.Id
		JOIN UserGoal as ug ON np.Id = ug.NutritionPropertyId
		WHERE up.PlatterDate BETWEEN ug.StartDate AND ug.EndDate
		AND ug.UserId = (select UserId from inserted)
		GROUP BY ug.NutritionPropertyId, ug.Quantity
	)
	WHERE UserId = (select userId from inserted)
END
GO
