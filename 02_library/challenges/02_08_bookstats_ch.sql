-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(DISTINCT(Title)) AS BookNumbers
FROM Books
GROUP BY Published
ORDER BY BookNumbers DESC;

SELECT b.Title, COUNT(b.Title) AS NumCheckouts
FROM Loans AS l 
Left JOIN Books AS b 
ON l.BookID = b.BookID
GROUP BY b.Title
ORDER BY NumCheckouts DESC
LIMIT 5;