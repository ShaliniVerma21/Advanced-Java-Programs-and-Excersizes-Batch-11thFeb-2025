create database J2EE;
use J2EE;

CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(50) NOT NULL,
    upass VARCHAR(255) NOT NULL,
    uemail VARCHAR(100) NOT NULL UNIQUE
);

select * from User;