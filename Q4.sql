CREATE PROC dbo.InfoBySharpstown282020
AS
SELECT
	B1.Name, B1.Address, B3.Title 
	FROM tbl_borrower B1
	INNER JOIN tbl_book_loans B2 ON B2.CardNo = B1.CardNo
	INNER JOIN tbl_books B3 ON B3.BookID = B2.BookID
	INNER JOIN tbl_book_copies B4 ON B4.BookID = B2.BookID
	INNER JOIN tbl_library_branch L1 ON L1.BranchID = B4.BranchID
	WHERE BranchName = 'Sharpstown'
	AND DateDue = '2020-02-08'
GO

[dbo].[InfoBySharpstown282020]

/*CREATE PROC dbo.InfoByDueDatenBranch @Branch nvarchar(30), @Due nvarchar(30)
AS
SELECT
	B1.Name, B1.Address, B3.Title 
	FROM tbl_borrower B1
	INNER JOIN tbl_book_loans B2 ON B2.CardNo = B1.CardNo
	INNER JOIN tbl_books B3 ON B3.BookID = B2.BookID
	INNER JOIN tbl_book_copies B4 ON B4.BookID = B2.BookID
	INNER JOIN tbl_library_branch L1 ON L1.BranchID = B4.BranchID
	WHERE BranchName = @Branch
	AND DateDue = @Due
GO

EXEC [dbo].[InfoByDueDatenBranch] @Branch = 'Sharpstown', @Due = '2020-02-08' */