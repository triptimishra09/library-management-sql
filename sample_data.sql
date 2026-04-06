USE librarydb;

-- -------------------------------
-- Insert Authors
-- -------------------------------
INSERT INTO Authors (author_id, name) VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell'),
(3, 'Agatha Christie'),
(4, 'Dan Brown'),
(5, 'Chetan Bhagat');

-- -------------------------------
-- Insert Books
-- -------------------------------
INSERT INTO Books (book_id, title, author_id, genre, available_copies) VALUES
(1, 'Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 5),
(2, '1984', 2, 'Dystopian', 4),
(3, 'Murder on the Orient Express', 3, 'Mystery', 3),
(4, 'The Da Vinci Code', 4, 'Thriller', 6),
(5, 'Half Girlfriend', 5, 'Romance', 2),
(6, 'Animal Farm', 2, 'Political Satire', 5),
(7, 'Angels and Demons', 4, 'Thriller', 4);

-- -------------------------------
-- Insert Members
-- -------------------------------
INSERT INTO Members (member_id, name, email, join_date) VALUES
(1, 'Amit Sharma', 'amit@email.com', '2025-01-10'),
(2, 'Riya Patel', 'riya@email.com', '2025-02-15'),
(3, 'Rahul Singh', 'rahul@email.com', '2025-03-05'),
(4, 'Sneha Verma', 'sneha@email.com', '2025-03-20'),
(5, 'Arjun Mehta', 'arjun@email.com', '2025-04-01');

-- -------------------------------
-- Insert Borrow Records
-- -------------------------------
INSERT INTO Borrow_Records (record_id, member_id, book_id, issue_date, return_date) VALUES
(1, 1, 2, '2025-03-01', '2025-03-10'),
(2, 2, 1, '2025-03-05', '2025-03-15'),
(3, 3, 4, '2025-03-07', '2025-03-17'),
(4, 4, 3, '2025-03-10', '2025-03-20'),
(5, 5, 6, '2025-03-12', '2025-03-22');
