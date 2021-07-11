drop database if exists 19wh1a12b5;
create schema 19wh1a12b5;
use 19wh1a12b5;
CREATE TABLE Student(
studentID INT NOT NULL AUTO_INCREMENT,
FName VARCHAR(20),
LName VARCHAR(20),
Address VARCHAR(30),
City VARCHAR(15),
Marks INT,
PRIMARY KEY(studentID)
);
CREATE TRIGGER calculate
before INSERT 
ON Student
FOR EACH ROW
SET new.Marks = new.Marks+100;
create table Final_mark(per int );
CREATE TRIGGER total_mark
after insert 
ON Student
FOR EACH ROW
insert into Final_mark values(new.marks);

INSERT INTO Student Values(1, "aa", "bb", "dd", "dd", 10);
select * from Student;
select * from Final_mark;