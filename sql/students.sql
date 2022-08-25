-- create database
CREATE DATABASE demo;

-- create schema
CREATE SCHEMA IF NOT EXISTS school;

-- create table
-- a data type is a description of the kind of data in a table column 
CREATE TABLE IF NOT EXISTS school.students (
student_name text,
subject text,
student_section text,
marks int
);

-- insert records in table school.students
INSERT INTO school.students
VALUES ('Daniel', 'English', 'A', 90),
('Robin', 'Biology', 'C', 78),
('John', 'Biology','B',60),
('Akshat','English','A',88),
('Esra','Physics','B',91),
('Michelle','Physics','C',82),
('Monica', 'English', 'C', 68);

-- print all rows
-- use * to select all columns
SELECT * 
FROM school.students;

-- select only student name and section
SELECT student_name, student_section 
FROM school.students;

-- show all students in section C
SELECT *
FROM school.students
WHERE student_section = 'C';

-- how many students in each section?
-- to aggregate means to group into a class or cluster
SELECT student_section, count(*) as count_of_students
FROM school.students
GROUP BY student_section;

-- which section has more than 2 students?
SELECT student_section, count(*) as count_of_students
FROM school.students
GROUP BY student_section
HAVING count(*) > 2;

-- what is the difference between WHERE and HAVING?
-- the average marks of which Science subject (Physics/Chemistry) is more than 80?
SELECT subject, AVG(marks) as avg_marks
FROM school.students
WHERE subject in ('Physics','Biology')
GROUP BY subject
HAVING AVG(marks) > 80;

-- get a list of students appeared for English exam and find highest scorer?
SELECT student_name, marks
FROM school.students
WHERE subject = 'English'
ORDER BY marks DESC;

-- get top three highest scorers across all subjects?
SELECT student_name, subject, marks
FROM school.students
ORDER BY marks DESC
LIMIT 3;

-- how many subjects did students write exams for?
SELECT DISTINCT(subject)
FROM school.students;
