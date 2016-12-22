CREATE NONCLUSTERED INDEX NutritionPropertyName
ON NutritionProperty(Name)

CREATE NONCLUSTERED INDEX TagsTagName
ON Tags(TagName)

CREATE NONCLUSTERED INDEX ChainsName
ON Chains(Name)

CREATE NONCLUSTERED INDEX RestaurantsName
ON Restaurants(Name)

CREATE NONCLUSTERED INDEX PlattersName
ON Platters(Name)
