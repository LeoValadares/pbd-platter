CREATE TRIGGER CountPlatterCalories
ON PlatterIngredient
FOR INSERT
AS
BEGIN
	declare @PlatterId int;

	set @PlatterId = (select PlatterId from inserted)

	UPDATE Platters
	SET CalorieCount=(
		SELECT SUM(ip.Quantity)
		FROM PlatterIngredient AS pin
		JOIN Ingredient AS i ON pin.IngredientId = i.Id
		JOIN IngredientProperty AS ip ON i.Id = ip.IngredientId
		JOIN NutritionProperty AS np ON ip.NutritionPropertyId = np.Id
		WHERE pin.PlatterId=@PlatterId AND np.Name='Calories'
	)
	WHERE Id=@PlatterId
END
GO
