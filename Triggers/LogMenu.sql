CREATE TRIGGER LogMenu
ON Menu
FOR UPDATE
AS
BEGIN
	INSERT INTO MenuLog(PlatterId, RestaurantId, Price, ExpiredDate)
	VALUES(
		(select PlatterID from inserted),
		(select RestaurantId from inserted),
		(select Price from inserted),
		GETDATE()
	)
END
GO
