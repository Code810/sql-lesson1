CREATE DATABASE Department;
USE Department;

CREATE TABLE Employee (
   Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
   Fullname nvarchar(255) NOT NULL,
   Age int CHECK (Age >= 0) NOT NULL,
   Email nvarchar(255) NOT NULL UNIQUE,
   Salary int CHECK (Salary >= 300 AND Salary <= 2000) NOT NULL
);

INSERT INTO Employee
VALUES 
('Nadir Shirinbayli',32,'Nadir@gmail.com',350);

INSERT INTO Employee
VALUES 
('Employe1',26,'Employe1@gmail.com',950),
('Employe2',25,'Employe2@gmail.com',760),
('Employe3',33,'Employe3@gmail.com',820),
('Employe4',65,'Employe4@gmail.com',1300),
('Employe5',18,'Employe5@gmail.com',1600),
('Employe6',15,'Employe6@gmail.com',2000);

SELECT * FROM Employee;

UPDATE Employee SET Salary=1150 WHERE Id=2;

SELECT * FROM Employee WHERE Salary BETWEEN 500 AND 1500;

SELECT Fullname,Email,Salary FROM Employee ORDER BY Salary DESC;
