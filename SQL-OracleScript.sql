-- STUDENT
-- Creating Student table
CREATE TABLE Student (
StudentNo int NOT NULL,
StudentName VARCHAR(20) NOT NULL,
CourseCode VARCHAR(8),
AcademicYear VARCHAR(4) NOT NULL,
CONSTRAINT Student_StudentNo_PK PRIMARY KEY(StudentNo)
);

-- Populating Student table
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES ('16021568', 'Tai Nyirenda', 'CIMVYUSW', '2024');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('91908204', 'Leon King', 'CAMWUSWT', '2023');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('30122010', 'Alex Legend', 'CIESUSWT', '2023');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('20023259', 'Joesph Gunner', 'CAESUSWT', '2024');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('26092023', 'Allan Watts', '', '2025');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('22021964', 'Emma Lindiwe', 'CONWUSWT', '2024');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('99807024', 'Thomas Evans', '', '2025');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('26368575', 'Jamerson Lime', 'CANWUSWT', '2024');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('86759657', 'Jack Hennessy', '', '2025');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('76549767', 'Ginny Hamberg', 'CIMWUSWT', '2023');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('76578346', 'Dan Gobbs' ,'CIESUSWT', '2023');
INSERT INTO Student (StudentNo, StudentName, CourseCode, AcademicYear)
VALUES('83497589', 'Bash Hakim', 'CANWUSWT', '2024');


-- TRAINER
-- Creating Trainer table
CREATE TABLE Trainer(
TrainerNo int NOT NULL,
TrainerName VARCHAR (20) NOT NULL,
TrainerTitle VARCHAR(20) NOT NULL,
CourseCode VARCHAR (8) NOT NULL,
CONSTRAINT Trainer_TrainerNo_PK PRIMARY KEY(TrainerNo)
);

-- Populating Trainer table
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('224680', 'Jennifer Cribs', 'Dr', 'CONWUSWT');
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('303570', 'Leon King','Prof.', 'CIMWUSWT');
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('708199', 'Alex Strong','Sir', 'CANWUSWT'); 
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('597310', 'Ceri Kerr', 'Ms', 'CAESUSWT');
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('553647', 'John Bennet', 'Mr', 'CIMVYUSW');
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('223578', 'Cary Hughes', 'Dr', 'CIESUSWT');
INSERT INTO Trainer (TrainerNo, TrainerName, TrainerTitle, CourseCode)
VALUES('308567', 'Jasper Hills', 'Prof.', 'CAMWUSWT');


-- ROOM
-- Creating Room table
CREATE TABLE Room(
RoomNo VARCHAR(4) NOT NULL, 
CourseTitle VARCHAR(40) NOT NULL,
CourseCode VARCHAR (8) NOT NULL,
CONSTRAINT Room_RoomNo_PK PRIMARY KEY(RoomNo)
);

-- Populating Room table
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES ('J202', 'Computer Science', 'CAMWUSWT');              
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES('PS10', 'Nursing', 'CIESUSWT');							  
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES('TR04', 'Introduction to Psychology', 'CIMVYUSW');			  
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES('TR09', 'Criminology', 'CIMWUSWT');						  
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES('J404', 'Aircraft Maintenance Engineering', 'CANWUSWT');
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES('PL70', 'Geography', 'CAESUSWT');							  
INSERT INTO Room ( RoomNo, CourseTitle, CourseCode)
VALUES('KG33', 'Data Science', 'CONWUSWT');						  


--COURSE TYPE
-- Creating CourseType Table
CREATE TABLE CourseType(
CourseType VARCHAR (20) NOT NULL,
CourseTitle VARCHAR (40) NOT NULL,
CONSTRAINT CourseType_CourseType_PK PRIMARY KEY(CourseType)
);

-- Populating Course Type table
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('BSc', 'Computer Science');
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('PhD', 'Nursing');
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('Accreditation', 'Introduction to Psychology');
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('Foundation', 'Georgraphy');
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('Diploma', 'Criminology');
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('MSc', 'Data Science');
INSERT INTO CourseType ( CourseType, CourseTitle)
VALUES('Apprenticeship', 'Aircraft Maintenance Engineering');


-- CURRENT COURSE
-- Creating Current Course table
CREATE TABLE CurrentCourse(
CourseCode VARCHAR(8) NOT NULL,
CourseTitle VARCHAR(40) NOT NULL,
CourseDesc VARCHAR (20) NOT NULL,
NoOfModules INT NOT NULL,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL,
CourseType VARCHAR (20) NOT NULL,
TrainerNo int NOT NULL,
RoomNo VARCHAR(4) NOT NULL,
CoursePrice INT NOT NULL,
CONSTRAINT CourseType_CourseCode_PK PRIMARY KEY(CourseCode),
CONSTRAINT CurrentCourse_CourseType_fk FOREIGN KEY(CourseType) 
REFERENCES CourseType(CourseType),
CONSTRAINT CurrentCourse_TrainerNo_fk FOREIGN KEY(TrainerNo) 
REFERENCES Trainer(TrainerNo),
CONSTRAINT CurrentCourse_RoomNo_fk FOREIGN KEY(RoomNo) 
REFERENCES Room(RoomNo)
);

-- Setting date format
ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD'

-- Populating CurrentCourse table
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CIMVYUSW', 'Introduction to Psychology', 'Level 5' , 5, '2024-03-01', '2024-05-01', 'Accreditation','553647', 'TR04', '700');
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CIESUSWT', 'Nursing', 'Level 7', 7, '2023-09-01', '2026-09-01', 'PhD', '303570', 'PS10', '12596');
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CAESUSWT', 'Georgraphy', 'Level 3', 3, '2023-01-01', '2025-01-01', 'Foundation', '597310', 'PL70', '2000');						   
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CIMWUSWT', 'Criminology', 'Level 4', 4,'2023-09-01', '2025-07-01', 'Diploma', '303570', 'TR09', '6500');
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CONWUSWT', 'Data Science', 'Level 6', 6, '2023-09-15', '2024-10-15', 'MSc', '224680', 'KG33', '9000');
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CANWUSWT', 'Aircraft Maintenance Engineering', 'Level 2', 2, '2024-09-01', '2025-07-01', 'Apprenticeship', '708199', 'J404', '1500');
INSERT INTO CurrentCourse (CourseCode, CourseTitle, CourseDesc, NoOfModules, StartDate, EndDate, CourseType, TrainerNo, RoomNo, CoursePrice)
VALUES('CAMWUSWT', 'Computer Science', 'Level 4', 4, '2022-09-01', '2025-09-01', 'BSc', '308567', 'J202', '3000');


-- ALLOCATION
-- Creating Allocation table
CREATE TABLE Allocation (
CourseCode VARCHAR(8) NOT NULL,
StudentNo int NOT NULL,
CONSTRAINT Allocation_CourseCode_fk FOREIGN KEY(CourseCode) 
REFERENCES CurrentCourse(CourseCode),
CONSTRAINT Allocation_StudentNo_fk FOREIGN KEY(StudentNo) 
REFERENCES Student(StudentNo)
);

-- Populating Allocation Table
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CIMVYUSW', '16021568');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CAMWUSWT','91908204');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CIESUSWT','30122010');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CAESUSWT','20023259');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CIMWUSWT','26092023');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CONWUSWT','22021964');
INSERT INTO Allocation(CourseCode, StudentNo)
VALUES('CANWUSWT','99807024');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CIESUSWT','76578346');
INSERT INTO Allocation ( CourseCode, StudentNo)
VALUES('CANWUSWT', '83497589');
 
-- Displaying Allocation table to check table structure    
SELECT * FROM Allocation

-- Displaying CurrentCourse table
SELECT * FROM CurrentCourse

-- Displaying CourseType table to check table structure
SELECT * CourseType

-- Displaying Room table to check table structure
SELECT * FROM Room

-- Displaying Trainer table to check table structure
SELECT * FROM Trainer


-- Displaying Student table to check table structure
SELECT * FROM Student


--Produce a list of currently running courses by course code then date order. 
SELECT CourseCode, CourseTitle, to_char(StartDate, 'MM/DD/YYYY') AS StartDate,
CASE 
WHEN TO_CHAR(StartDate, 'YYYY')<='2023' THEN 'Running' 
WHEN TO_CHAR(StartDate, 'YYYY')>'2023' THEN 'Pending' 
END CourseStatus
FROM CurrentCourse
ORDER BY CourseCode, StartDate;

--Produce a list of courses that have "Introduction' as part of their title
SELECT CourseCode, CourseTitle
FROM CurrentCourse
WHERE CourseTitle LIKE 'Introduction%';

--List the most expensive and the least expensive course that GBT provides. Use sensible headings 
SELECT CourseTitle, CoursePrice
FROM CurrentCourse 
WHERE CoursePrice = (
	SELECT MIN(CoursePrice) 
	FROM CurrentCourse) OR 
	CoursePrice = (
	SELECT MAX(CoursePrice) 
	FROM CurrentCourse);

--Produce a list of the number of students on each of the currently allocated courses. (This should be calculated by the query NOT held as a piece of data)
SELECT CourseCode, COUNT(*) AS NoOfStudents
FROM Allocation
GROUP BY CourseCode;

--Produce a list of the current courses between two dates. Make sure you choose dates that provide MEANINGFUL output from your data.
SELECT CourseCode, CourseTitle, to_char(StartDate, 'MM/DD/YYYY') AS StartDate, CourseType
FROM CurrentCourse
WHERE StartDate BETWEEN '2022-01-01' AND '2023-12-01';

--Produce a list of the number of current courses of each type between two dates
SELECT CourseCode,  COUNT(*) AS "Number of Actual Courses Running"
FROM CurrentCourse
WHERE TO_CHAR(StartDate, 'YYYY') BETWEEN '2023' AND '2024'
GROUP BY CourseCode;

--Produce a list of the rooms (include type of room: e g ay facilities or not) and trainers (by name) allocated to each course for each week. 
SELECT T.TrainerName, T.TrainerNo, R.RoomNo, C.CourseTitle, TO_CHAR(StartDate, 'YYYY') AS StartDate
FROM Trainer T, Room R, CurrentCourse C
WHERE T.CourseCode = R.CourseCode AND R.CourseCode= C.CourseCode
ORDER BY T.TrainerName;

--Produce a list of students (include student name) currently allocated to an actual course
SELECT StudentNo, StudentName, CourseCode, AcademicYear
FROM Student
WHERE CourseCode <> 'NOTHING';

--Produce a list of the current courses together with the total revenue that each course would have/ will brought/bring in. I.e. the number of students on each course multiplied by the number of students taking that course
WITH
a AS (
SELECT CourseCode, COUNT(*) AS NoOfStudents
FROM Allocation
GROUP BY CourseCode
),
c AS (
SELECT CourseCode, CoursePrice, CourseTitle, TO_CHAR(StartDate, 'YYYY') AS StartDate
FROM CurrentCourse
)
SELECT
c.CourseCode,
c.CourseTitle,
c.CoursePrice,
a.NoOfStudents,
TO_CHAR(c.CoursePrice * a.NoOfStudents, '$999,999.99') AS TotalRevenue
FROM c
LEFT JOIN a ON c.CourseCode = a.CourseCode;
