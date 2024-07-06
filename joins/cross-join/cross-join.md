
# Cartesian Join(Cross Join):
It returns the Cartesian product of the tables being joined, which is the combination of every row of one table with every row of another table. 
For example, if table A contains 20 rows and table B consists of 30 rows, the Cross Join of these tables will result in a table will containing 20*30 (600) rows.

# Drinks
"Orange Juice"
"Tea"
"Coffee"
# Meals
"Omlet"
"Fried Egg"
"Sausage"
# Cross join:
SELECT * FROM Meals CROSS JOIN Drinks


"Omlet"	"Orange Juice"
"Omlet"	"Tea"
"Omlet"	"Coffee"
"Fried Egg"	"Orange Juice"
"Fried Egg"	"Tea"
"Fried Egg"	"Coffee"
"Sausage"	"Orange Juice"
"Sausage"	"Tea"
"Sausage"	"Coffee"

This is every possible combination of the meal with the drink.Meals contains 3 rows and Drinks contains 3 rows.The result contains the 9 roes(I.e 3*3)