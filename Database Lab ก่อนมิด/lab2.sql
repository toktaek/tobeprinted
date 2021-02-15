CREATE TABLE Student (
	StdID CHAR(11), 
	StdFName VARCHAR2(40), 
	StdLname VARCHAR2(40), 
	StdAddress VARCHAR2(80), 
	FCode CHAR(3), 
	DCode CHAR(3),

	CONSTRAINTS std_pk PRIMARY KEY(StdID),
	CONSTRAINTS std_fk_fact FOREIGN KEY(FCode)
		REFERENCES Fact(FCode),
	CONSTRAINTS std_fk_dept FOREIGN KEY(FCode, DCode)
		REFERENCES Dept(FCode, DCode)
);

CREATE TABLE Fact (
	FCode 		CHAR(3) , 
	FName_Tha 	VARCHAR2(80),
	FName_Eng 	VARCHAR2(80),
	CONSTRAINTS  fact_pk
		PRIMARY KEY(FCode)
);

CREATE TABLE Dept (
	FCode CHAR(3), 
	DCode CHAR(3),
	DName_Tha VARCHAR2(80),
	DName_Eng VARCHAR2(80),
	CONSTRAINTS  dept_pk
		PRIMARY KEY(DCode, FCode),
	CONSTRAINTS dept_fk_fact FOREIGN KEY(FCode)
		REFERENCES Fact(FCode)	
);

----
INSERT INTO <tableName>(col2_name, col1_name) 
	VALUES('col2_val', col1_val);
	
INSERT INTO <tableName> VALUES(col1_val, 'col2_val');

INSERT INTO Loc VALUES('L01', 'SC.06');
INSERT INTO Loc(LName, LID)
	VALUES('SC.09', 'L02');
----
INSERT INTO Fact VALUES('F01', 'คณะวิทยาศาสตร์ ', 'Science');
INSERT INTO Fact VALUES('F02', 'คณะวิศวกรรมศาสตร์ ', 'Engineer');
INSERT INTO Fact VALUES('F03', 'คณะเทคโนโลยี ', 'Technology');
INSERT INTO Fact VALUES('F04', 'คณะมนุษยศาสตร์และสังคมศาสตร์ ', 'Humanities and Social Sciences');
INSERT INTO Fact VALUES('F05', 'คณะศึกษาศาสตร์ ', 'Education');


DELETE FROM Fact WHERE Fcode = 'F01';
DELETE FROM Fact WHERE Fcode = 'F02';
DELETE FROM Fact WHERE Fcode = 'F03';
DELETE FROM Fact WHERE Fcode = 'F04';
DELETE FROM Fact WHERE Fcode = 'F05';

INSERT INTO Dept VALUES('F01', 'D01', 'คณิตศาสตร์', 'Mathematics');
INSERT INTO Dept VALUES('F01', 'D02', 'สถิติ' , 'Statistics');
INSERT INTO Dept VALUES('F01', 'D03', 'วิทยาการคอมพิวเตอร์', 'Computer Science');
INSERT INTO Dept VALUES('F02', 'D01', 'วิศวกรรมคอมพิวเตอร์', 'Computer Engineer');
INSERT INTO Dept VALUES('F03', 'D01', 'เทคโนโลยีการอาหาร', 'Food Technology');

DELETE FROM Dept WHERE Fcode = 'F01';
DELETE FROM Dept WHERE Fcode = 'F02';
DELETE FROM Dept WHERE Fcode = 'F03';
DELETE FROM Dept WHERE Fcode = 'F04';
DELETE FROM Dept WHERE Fcode = 'F05';

INSERT INTO Student VALUES('623021039-4', 'อัยยะ', 'บุ้งทอง', '123',  'F01', 'D01' );
INSERT INTO Student VALUES('623021039-5', 'อัยยะ', 'บุ้งทอง', '123',  'F01', 'D03' );
INSERT INTO Student VALUES('623021039-6', 'อัยยะ', 'บุ้งทอง', '123',  'F01', 'D03' );
INSERT INTO Student VALUES('623021039-7', 'อัยยะ', 'บุ้งทอง', '123',  'F01', 'D03' );


DELETE FROM Student WHERE StdID = '623021039-4';
DELETE FROM Student WHERE StdID = '623021039-5';
DELETE FROM Student WHERE StdID = '623021039-6';
DELETE FROM Student WHERE StdID = '623021039-7';

