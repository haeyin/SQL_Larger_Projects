CREATE PROC dbo.StephenKingCentral
AS
SELECT
	B.Title, BC.Number_Of_Copies, LB.BranchName
	FROM tbl_book_authors BA
	INNER JOIN tbl_books B ON B.BookID = BA.BookID
	INNER JOIN tbl_book_copies BC ON BC.BookID = BA.BookID
	INNER JOIN tbl_library_branch LB ON LB.BranchID = BC.BranchID
	WHERE BA.AuthorName = 'Stephen King'
	AND BranchName = 'Central'
GO

/*CREATE PROC dbo.StephenKingBranch
AS
SELECT
	B.Title, BC.Number_Of_Copies, LB.BranchName
	FROM tbl_book_authors BA
	INNER JOIN tbl_books B ON B.BookID = BA.BookID
	INNER JOIN tbl_book_copies BC ON BC.BookID = BA.BookID
	INNER JOIN tbl_library_branch LB ON LB.BranchID = BC.BranchID
WHERE BA.AuthorName = 'Stephen King'
*/