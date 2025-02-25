-- Project Student Management System

create database SMS;

use SMS;

CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE, 
    phone VARCHAR(20) NOT NULL UNIQUE, 
    address VARCHAR(150) NOT NULL, 
    dob DATE NOT NULL, 
    password VARCHAR(255) NOT NULL UNIQUE  -- Increased length to 255
);

insert into user (name, email, phone, address, dob, password) values
('Yogesh','yoga@gmail.com','7304669470', 'Titwala', '2002-04-02', 'YJ#12345'),
('Gaurav','G@gmail.com','7314669470', 'Titwala', '2002-04-02', 'Gj#12345'),
('Makrand','M@gmail.com','7324669470', 'Titwala', '2002-04-02', 'Mj#12345'),
('Amaan','A@gmail.com','7334669470', 'Titwala', '2002-04-02', 'Aj#12345'),
('Taufiq','T@gmail.com','7344669470', 'Titwala', '2002-04-02', 'Tj#12345');

select * from user;

CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    serial_no int Not Null,
    name VARCHAR(100) NOT NULL,
    className VARCHAR(50) NOT NULL, 
    batchName varchar(5) NOT NULL,
	paymentDate DATE NOT NULL, 
    mobile VARCHAR(20) NOT NULL UNIQUE, 
    parentsMobile VARCHAR(20) NOT NULL UNIQUE, 
    payAmount VARCHAR(6) NOT NULL
);

INSERT INTO student (serial_no, name, className, batchName, paymentDate, mobile, parentsMobile, payAmount) VALUES
(101, 'Aarav Sharma', '10th Grade', 'A1', '2023-05-15', '9876543210', '9988776655', '5000'),
(102, 'Vivaan Patel', '10th Grade', 'A1', '2023-06-20', '9876543211', '9988776656', '5000'),
(103, 'Aditya Singh', '9th Grade', 'B1', '2023-07-25', '9876543212', '9988776657', '4500'),
(104, 'Vihaan Gupta', '8th Grade', 'B1', '2023-08-30', '9876543213', '9988776658', '4000'),
(105, 'Arjun Reddy', '10th Grade', 'A1', '2023-09-10', '9876543214', '9988776659', '5000'),
(106, 'Sai Kumar', '9th Grade', 'B1', '2023-10-05', '9876543215', '9988776660', '4500'),
(107, 'Krishna Iyer', '8th Grade', 'B1', '2023-11-15', '9876543216', '9988776661', '4000'),
(108, 'Rohan Mehta', '10th Grade', 'A1', '2023-12-20', '9876543217', '9988776662', '5000'),
(109, 'Anaya Joshi', '9th Grade', 'B1', '2024-01-25', '9876543218', '9988776663', '4500'),
(110, 'Diya Nair', '8th Grade', 'B1', '2024-02-28', '9876543219', '9988776664', '4000');

select * from student;
