
CREATE PROC dbo.MoreThan5
AS
SELECT
	B1.Name, B1.Address, COUNT(BL.CardNo) tbl_book_loans
	FROM tbl_borrower B1
	INNER JOIN tbl_book_loans BL ON BL.CardNo = B1.CardNo
	GROUP BY B1.Name, B1.Address
	HAVING COUNT(BL.CardNo) < 5
GO



