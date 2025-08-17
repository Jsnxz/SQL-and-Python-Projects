-- student_database.sql

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT
);

INSERT INTO Students VALUES (1, 'Rahul', 85), (2, 'Priya', 92), (3, 'Amit', 76);

-- Query students who scored more than 80
SELECT * FROM Students WHERE Marks > 80;
