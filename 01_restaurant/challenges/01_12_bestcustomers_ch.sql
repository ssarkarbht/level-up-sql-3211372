-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, o.NumOrder
FROM Customers as c
JOIN (SELECT CustomerID, COUNT(OrderID) AS NumOrder
FROM Orders
GROUP BY CustomerID) AS o 
ON c.CustomerID = o.CustomerID 
ORDER BY o.NumOrder DESC
LIMIT 6;