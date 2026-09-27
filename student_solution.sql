CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Computer Science'),
(102, 'Electronics'),
(103, 'Mechanical');

INSERT INTO Student (StudentID, StudentName, Gender, DepartmentID) VALUES
(1001, 'Arun', 'Male', 101),
(1002, 'Divya', 'Female', 102),
(1003, 'Karthik', 'Male', 103);

SELECT s.StudentID,
       s.StudentName,
       d.DepartmentName
FROM Student AS s
INNER JOIN Department AS d
ON s.DepartmentID = d.DepartmentID;
