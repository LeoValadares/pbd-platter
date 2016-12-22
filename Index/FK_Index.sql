CREATE NONCLUSTERED INDEX PaymentVoucherId 
ON Payment(VoucherId)

CREATE NONCLUSTERED INDEX PaymentMethodId
ON Payment(MethodId)

CREATE NONCLUSTERED INDEX UserGoalUserId
ON UserGoal(UserId)

CREATE NONCLUSTERED INDEX UserGoalNutritionPropertyId
ON UserGoal(NutritionPropertyId)

CREATE NONCLUSTERED INDEX VoucherRestaurantId
ON Voucher(RestaurantId)

CREATE NONCLUSTERED INDEX PlatterIngredientPlatterId
ON PlatterIngredient(PlatterId)

CREATE NONCLUSTERED INDEX PlatterIngredientIngredientId
ON PlatterIngredient(IngredientId)

CREATE NONCLUSTERED INDEX NutritionPropertyUnitId
ON NutritionProperty(UnitId)

CREATE NONCLUSTERED INDEX PlatterTagsPlatterId
ON PlatterTags(PlatterId)

CREATE NONCLUSTERED INDEX PlatterTagsTagId
ON PlatterTags(TagId)

CREATE NONCLUSTERED INDEX MenuLogPlatterId
ON MenuLog(PlatterId)

CREATE NONCLUSTERED INDEX MenuLogRestaurantId
ON MenuLog(RestaurantId)

CREATE NONCLUSTERED INDEX UserRolesChainId
ON UserRoles(ChainId)

CREATE NONCLUSTERED INDEX UserRolesRestaurantId
ON UserRoles(RestaurantId)

CREATE NONCLUSTERED INDEX UserRolesRoleId
ON UserRoles(RoleId)

CREATE NONCLUSTERED INDEX UserRolesUserId
ON UserRoles(UserId)

CREATE NONCLUSTERED INDEX RestaurantChainId
ON Restaurants(ChainId)

CREATE NONCLUSTERED INDEX MenuPlatterId
ON Menu(PlatterId)

CREATE NONCLUSTERED INDEX MenuRestaurantId
ON Menu(RestaurantId)

CREATE NONCLUSTERED INDEX MenuOrderOrderId
ON MenuOrder(OrderId)

CREATE NONCLUSTERED INDEX MenuOrderMenuId
ON MenuOrder(MenuId)

CREATE NONCLUSTERED INDEX OrdersUserId
ON Orders(UserId)

CREATE NONCLUSTERED INDEX OrdersPaymentId
ON Orders(PaymentId)
