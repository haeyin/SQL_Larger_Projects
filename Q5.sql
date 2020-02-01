CREATE PROC dbo.BranchLoans
AS
SELECT
	L1.BranchName, L1.Address, COUNT (*) tbl_book_loans
	FROM tbl_library_branch L1
	INNER JOIN tbl_book_loans BL ON BL.BranchID = L1.BranchID 
	GROUP BY L1.BranchName, L1.Address


