CREATE PROC dbo.CopiesOfTheLostTribe
AS
SELECT
	BC.Number_Of_Copies, LB.BranchName
	FROM tbl_book_copies BC
	INNER JOIN tbl_library_branch LB ON LB.BranchID = BC.BranchID
	INNER JOIN tbl_books B ON B.BookID = BC.BookID
	WHERE Title = 'The Lost Tribe'
GO

[dbo].[CopiesOfTheLostTribe]