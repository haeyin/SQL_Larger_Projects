
USE db_library;

CREATE TABLE tbl_library_branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(30) NOT NULL,
	Address VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_publisher (
	PublisherName CHAR(50) PRIMARY KEY NOT NULL,
	Address CHAR(50) NOT NULL,
	Phone CHAR(20) NOT NULL
);

CREATE TABLE tbl_borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (3000,1),
	Name VARCHAR(30) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(15) NOT NULL 
);

CREATE TABLE tbl_books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (200,1),
	Title VARCHAR(60) NOT NULL,
	PublisherName CHAR(50) NOT NULL
);

CREATE TABLE tbl_book_authors (
	BookID INT NOT NULL,
	AuthorName VARCHAR(30) NOT NULL
);

CREATE TABLE tbl_book_copies (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	Number_Of_Copies INT NOT NULL
);

CREATE TABLE tbl_book_loans (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	CardNo INT NOT NULL,
	DateOut VARCHAR(15) NOT NULL,
	DateDue VARCHAR(15) NOT NULL
);

INSERT INTO tbl_library_branch
	(BranchName, Address)
	VALUES
	('Sharpstown', '7900 Leader St, Houston TX 77036'),
	('Central', '3815 Westheimer Rd, Houston, TX 77027'),
	('Westchase', '3100 Hayes Rd, Houston, TX 77082'),
	('Robindell', '5700 Beechnut St, Houston, TX 77074')

INSERT INTO tbl_publisher
	(PublisherName, Address, Phone)
	VALUES
	('Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','61-2-8425-0100'),('Atheneum Books','1230 6th Ave, New York, NY 10020','212-698-7000'),
	('Bantam Spectra','1745 Broadway, New York, NY 10019','212-782-9000'),('Bloomsbury','1385 Broadway, New York, NY 10018','212-419-5300'),('Doubleday','1745 Broadway, New York, NY 10019','212-572-2662'),
	('Geoffrey Bles','Heaven','Holy Spirit'),('HarperCollins','1745 Broadway, New York, NY 10019','800-242-7737'),('Henry Holt and Co','120 Broadway, New York, NY 10271','646-307-5095'),
	('MacMillan','120 Broadway, New York, NY 10271','888-330-8477'),('Random House','1745 Broadway, New York, NY 10019','800-733-3000'),('The World Publishing Company','Defunct','N/A')

INSERT INTO tbl_books
	(Title, PublisherName)
	VALUES
	('The Shining', 'Doubleday'),('The Outsider','Scribner'),('The Institute', 'Scribner'),('The Lost Tribe', 'Henry Holt and Co'),('Heidi', 'The World Publishing Company'),
	('The Screwtape Letters', 'Geoffrey Bles'),('Mere Christianity', 'Geoffrey Bles'),('Prince Caspian', 'Geoffrey Bles'),
	('Protector of the Small', 'Random House'),('Lioness Rampant', 'Atheneum Books'),('Lirael', 'HarperCollins'),('Abhorsen', 'HarperCollins'),
	('The Return of the King', 'Allen & Unwin'),('The Two Towers', 'Allen & Unwin'),('The Lord of the Rings', 'Allen & Unwin'),
	('The Magicians of Caprona', 'Macmillan'),('Charmed Life', 'Macmillan'),('A Game of Thrones', 'Bantam Spectra'),('A Clash of Kings', 'Bantam Spectra'),
	('Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),('Harry Potter and the Deathly Hallows', 'Bloomsbury')

INSERT INTO tbl_book_authors
	(BookID, AuthorName)
	VALUES
	(215, 'Diana Wynne Jones'),(216, 'Diana Wynne Jones'),(200, 'Stephen King'),(201, 'Stephen King'),(202, 'Stephen King'),
	(210, 'Garth Nix'),(211, 'Garth Nix'),(212, 'J.R.R. Tolkien'),(213, 'J.R.R. Tolkien'),(214, 'J.R.R. Tolkien'),
	(203, 'Mark Lee'),(204, 'Johanna Spyri'),(219, 'J.K. Rowling'),(220, 'J.K. Rowling'),(208, 'Tamora Pierce'),(209, 'Tamora Pierce'),
	(205, 'C.S. Lewis'),(206, 'C.S. Lewis'),(207, 'C.S. Lewis'),(217, 'George R.R. Martin'),(218, 'George R.R. Martin')

INSERT INTO tbl_borrower
	(Name, Address, Phone)
	VALUES
	('Strawberry Pie', '12345 Forks st, Houston TX', '281-562-0808'),('Salmon Steak', '6789 Knives St, Houston TX', '281-457-9808'),
	('Cheese Flan', '12345 Forks st, Houston TX', '281-562-0808'),('Steve Steak', '6789 Knives St, Houston TX', '281-457-9808'),
	('Stewie Stew', '1928 Spoons Ave, Houston TX', '281-984-7935'),('Dum Pling', '1468 Ladle Ave, Houston TX', '281-600-2034'),
	('New Dol', '7820 Chopsticks Ct, Houston TX', '281-135-5432'),('Brad Bread', '6543 Cutlery Court, Houston TX', '281-654-9876'),
	('Keiki Cake', '1589 Dessert Drive, Houston TX', '281-169-0854'),('Piz Za', '8726 Hunger Ave, Houston TX', '281-733-3399'),
	('Ice Creme', '2468 Freeze Drive, Houston TX', '281-678-9630'),('Brow Knee','4821 Chocolate Way, Houston TX','281-222-3333')

INSERT INTO tbl_book_copies
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(203, 1, 2),(205, 1, 2),(206, 1, 2),(207, 1, 4),(208, 1, 3),(209, 1, 2),(215, 1, 2),(216, 1, 2),(219, 1, 2),(220, 1, 2),
	(200, 2, 2),(201, 2, 2),(208, 2, 3),(209, 2, 4),(215, 2, 3),(216, 2, 2),(217, 2, 3),(218, 2, 2),(219, 2, 2),(220, 2, 2),
	(200, 3, 3),(201, 3, 2),(207, 3, 2),(210, 3, 2),(211, 3, 2),(215, 3, 2),(216, 3, 2),(217, 3, 2),(218, 3, 2),(220, 3, 2),
	(202, 4, 2),(203, 4, 2),(204, 4, 4),(205, 4, 2),(206, 4, 2),(219, 4, 2),(220, 4, 2),(212, 4, 2),(213, 4, 2),(214, 4,2)

INSERT INTO tbl_book_loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(205, 4, 3005, '2019-12-23', '2020-01-21'),(206, 4, 3005, '2019-12-23', '2020-01-21'),
	(215, 1, 3000, '2019-12-30', '2020-01-28'),(216, 1, 3000, '2019-12-30', '2020-01-28'),
	(205, 1, 3000, '2019-12-30', '2020-01-28'),(206, 1, 3000, '2019-12-30', '2020-01-28'),
	(207, 1, 3000, '2019-12-30', '2020-01-28'),(208, 1, 3000, '2019-12-30', '2020-01-28'),
	(209, 1, 3000, '2019-12-30', '2020-01-28'),(200, 3, 3007, '2020-01-01', '2020-01-29'),
	(201, 3, 3007, '2020-01-01', '2020-01-29'),(217, 3, 3007, '2020-01-01', '2020-01-29'),
	(218, 3, 3007, '2020-01-01', '2020-01-29'),(203, 4, 3001, '2020-01-05', '2020-02-02'),
	(204, 4, 3001, '2020-01-05', '2020-02-02'),(210, 3, 3008, '2020-01-01', '2020-01-29'),
	(211, 3, 3008, '2020-01-01', '2020-01-29'),(214, 4, 3006, '2020-01-06', '2020-02-03'),
	(213, 4, 3006, '2020-01-06', '2020-02-03'),(212, 4, 3006, '2020-01-06', '2020-02-03'),
	(207, 3, 3002, '2019-12-18', '2020-01-16'),(215, 3, 3002, '2019-12-18', '2020-01-16'),
	(216, 3, 3002, '2019-12-18', '2020-01-16'),(219, 3, 3000, '2020-01-03', '2020-02-01'),
	(220, 3, 3000, '2020-01-03', '2020-02-01'),(215, 3, 3000, '2020-01-03', '2020-02-01'),
	(216, 3, 3000, '2020-01-03', '2020-02-01'),(217, 3, 3000, '2020-01-03', '2020-02-01'),
	(218, 3, 3000, '2020-01-03', '2020-02-01'),(208, 3, 3000, '2020-01-03', '2020-02-01'),
	(209, 3, 3000, '2020-01-03', '2020-02-01'),(200, 2, 3004, '2020-01-07', '2020-02-05'),
	(201, 2, 3004, '2020-01-07', '2020-02-05'),(219, 2, 3009, '2020-01-07', '2020-02-05'),
	(220, 2, 3009, '2020-01-07', '2020-02-05'),(215, 1, 3001, '2020-01-10', '2020-02-08'),
	(216, 1, 3001, '2020-01-10', '2020-02-08'),(219, 1, 3001, '2020-01-10', '2020-02-08'),
	(220, 1, 3001, '2020-01-10', '2020-02-08'),(209, 1, 3001, '2020-01-10', '2020-02-08'),
	(204, 4, 3005, '2020-01-15', '2020-02-14'),(200, 3, 3008, '2020-01-17', '2020-02-16'),
	(201, 3, 3008, '2020-01-17', '2020-02-16'),(217, 3, 3008, '2020-01-17', '2020-02-16'),
	(218, 3, 3008, '2020-01-17', '2020-02-16'),(208, 2, 3009, '2020-01-19', '2020-02-17'),
	(209, 2, 3009, '2020-01-19', '2020-02-17'),(205, 1, 3001, '2020-01-20', '2020-02-19'),
	(206, 1, 3001, '2020-01-20', '2020-02-19'),(203, 1, 3001, '2020-01-20', '2020-02-19')

