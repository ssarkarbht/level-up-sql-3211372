-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * from Customers
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';

SELECT Name FROM Dishes
WHERE DishID = 14;

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes
WHERE Name = 'Quinoa Salmon Salad')
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';