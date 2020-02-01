CREATE PROC dbo.Borrowers
AS
SELECT
	B2.Name, B2.CardNo
	FROM tbl_book_loans B1
	FULL OUTER JOIN tbl_borrower B2 
	ON B2.CardNo = B1.CardNo
	WHERE B1.CardNo IS NULL
GO


