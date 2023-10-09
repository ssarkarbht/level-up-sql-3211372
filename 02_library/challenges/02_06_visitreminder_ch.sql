-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT p.FirstName, p.Email, l.NumLoans
FROM Patrons as p 
JOIN (SELECT PatronID, COUNT(LoanID) AS NumLoans
    FROM Loans
    GROUP BY PatronID) AS l 
ON p.PatronID = l.PatronID
ORDER BY l.NumLoans
LIMIT 20;