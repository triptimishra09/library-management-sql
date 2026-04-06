-- View all books
SELECT * FROM Books;

-- View all members
SELECT * FROM Members;

-- View issued books with member names
SELECT m.name, b.title, br.issue_date, br.return_date
FROM Borrow_Records br
JOIN Members m ON br.member_id = m.member_id
JOIN Books b ON br.book_id = b.book_id;

-- Available books
SELECT title, available_copies
FROM Books
WHERE available_copies > 0;

-- Most Borrowed Books
SELECT b.title, COUNT(*) AS times_borrowed
FROM Borrow_Records br
JOIN Books b ON br.book_id = b.book_id
GROUP BY b.title
ORDER BY times_borrowed DESC;

-- Active Members (who borrowed books)
SELECT m.name, COUNT(*) AS books_taken
FROM Borrow_Records br
JOIN Members m ON br.member_id = m.member_id
GROUP BY m.name;

-- Currently Borrowed Books (not returned)
SELECT m.name, b.title, br.issue_date
FROM Borrow_Records br
JOIN Members m ON br.member_id = m.member_id
JOIN Books b ON br.book_id = b.book_id
WHERE br.return_date IS NULL;
