CREATE procedure CheckoutCart
	@UserId as int,
	@PaymentMethodId as int,
	@VoucherId as int=0
AS
BEGIN
	declare @OrderId int;
	declare @PaymentId table(PAYMENT_ID int);
	declare @PaymentValue float;

	set @OrderId = dbo.GetOpenOrder(@UserId)
	set @PaymentValue = dbo.GetOrderValue(@OrderId)
	
	INSERT INTO Payment(MethodId, Value, PaymentDate, VoucherId)
	output inserted.Id into @PaymentId
	VALUES(@PaymentMethodId, @PaymentValue, GETDATE(), @VoucherId)

	UPDATE Orders
	SET PaymentId=(select PAYMENT_ID from @PaymentId)
	WHERE PaymentId is NULL AND UserId = @UserId

END
