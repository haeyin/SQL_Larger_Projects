CREATE PROCEDURE dbo.CopiesOfTheLostTribeinSharpstown
AS
SELECT
	BC.Number_Of_Copies
	FROM tbl_book_copies BC
	INNER JOIN tbl_library_branch LB ON LB.BranchID = BC.BranchID
	INNER JOIN tbl_books B ON B.BookID = BC.BookID
	WHERE Title = 'The Lost Tribe'
	AND BranchName = 'Sharpstown'
GO

[dbo].[CopiesOfTheLostTribeinSharpstown]

