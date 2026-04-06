#  Library Management System (SQL Project)

##  Overview

This project is a Library Management System built using MySQL.
It manages books, students, and book issue/return operations efficiently using relational database concepts.

---

##  Features

* 📖 Add and manage books
* 👩‍🎓 Manage student records
* 🔄 Issue and return books
* 📅 Track issue and return dates
* 💰 (Upcoming) Fine calculation system

---

##  Tech Stack

* MySQL

---

##  Project Structure

library-management-sql
├── schema.sql
└── README.md

---

##  Database Design

### Books Table

* book_id (Primary Key)
* title
* author
* available_copies

### Students Table

* student_id (Primary Key)
* name
* department

### Issued Books Table

* issue_id (Primary Key)
* student_id (Foreign Key)
* book_id (Foreign Key)
* issue_date
* return_date

---

## How to Run

1. Open MySQL
2. Run the schema file:

```
SOURCE schema.sql;
```

3. Verify tables:

```
SHOW TABLES;
```

---

## Example Queries

```sql
-- Insert book
INSERT INTO books (title, author, available_copies)
VALUES ('DBMS', 'Korth', 5);

-- Insert student
INSERT INTO students (name, department)
VALUES ('Tripti', 'ECE');

-- Issue a book
INSERT INTO issued_books (student_id, book_id, issue_date)
VALUES (1, 1, CURDATE());
```

---

## Future Scope

* Fine calculation system
* Admin dashboard
* Full-stack integration (React + Backend)

---

## Author

Tripti Mishra
