CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE Department (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(100));
CREATE TABLE facultyID INT PRIMARY KEY,FacultyName VARCHAR(100));
CREATE TABLE Student (StudentID INT PRIMARY KEY,StudentName VARCHAR(100),DepartmentID INT,FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID));
CREATE TABLE Course (CourseID INT PRIMARY KEY,CourseName VARCHAR(100),FacultyID INT,FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID));
CREATE TABLE Enrollment (StudentID INT,CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID));
INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Commerce');
INSERT INTO Faculty VALUES
(101, 'Dr. Kumar'),
(102, 'Dr. Priya'),
(103, 'Dr. Ravi');
INSERT INTO Student VALUES
(1001, 'Arun', 1),
(1002, 'Divya', 2),
(1003, 'Kavin', 1),
(1004, 'Meena', 3);
INSERT INTO Course VALUES
(201, 'Database Systems', 101),
(202, 'Data Structures', 102),
(203, 'Mathematics', 103),
(204, 'Web Programming', 101);
INSERT INTO Enrollment VALUES
(1001, 201),
(1001, 202),
(1002, 203),
(1003, 201),
(1003, 204),
(1004, 203);
SELECT * FROM Student;
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Enrollment;
