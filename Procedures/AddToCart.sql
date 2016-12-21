CREATE procedure AddToCart
	@UserId as int,
	@MenuId as int,
	@Quantity as int
AS
BEGIN
	declare @OrdersCount TABLE(OrdersCount int);
	declare @OrdersId table(ORDER_ID int);

	INSERT INTO @OrdersCount
	SELECT COUNT(*)
	FROM Orders
	WHERE PaymentId is NULL AND UserId = @UserId
	
	if(select OrdersCount from @OrdersCount) = 0
	begin
		INSERT INTO Orders(UserId, OrderDate)
		output inserted.Id into @OrdersId
		VALUES (@UserId, GETDATE())
	end
	else
	begin
		INSERT INTO @OrdersId
		SELECT Id
		FROM Orders
		WHERE PaymentId is NULL AND UserId = @UserId
	end

	INSERT INTO MenuOrder(OrderId, MenuId, Quantity)
	VALUES ((select * from @OrdersId), @MenuId, @Quantity)
END
GO
