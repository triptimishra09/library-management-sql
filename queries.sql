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
