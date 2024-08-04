CREATE DATABASE alx_book_store;
USE alx_book_store;

CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    FOREIGN KEY customer_id REFERENCES Customers
);

CREATE TABLE Order_Details(
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY order_id REFERENCES Orders,
    FOREIGN KEY book_id REFERENCES Books,
    quantity DOUBLE
);




