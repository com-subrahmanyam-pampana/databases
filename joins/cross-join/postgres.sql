DROP Table Meals;
DROP Table Drinks;
CREATE TABLE Meals( "MealName" varchar(20))

CREATE TABLE Drinks( "DrinkName" varchar(20))

Insert into Drinks("DrinkName") values('Orange Juice'),('Tea'),('Coffee')

Insert into Meals("MealName") values('Omlet'),('Fried Egg'),('Sausage')



---Cross Join
SELECT * FROM Meals CROSS JOIN Drinks


