CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);

CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    category VARCHAR(50),
    available_copies INT,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members(
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

CREATE TABLE Borrow_Records(
    borrow_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY(member_id) REFERENCES Members(member_id),
    FOREIGN KEY(book_id) REFERENCES Books(book_id)
);

Added database schema for Library Management System
