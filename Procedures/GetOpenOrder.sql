CREATE FUNCTION GetOpenOrder(@UserId int)
RETURNS int
BEGIN
	return (SELECT Id
	FROM Orders
	WHERE PaymentId is NULL AND UserId=@UserId)
END
