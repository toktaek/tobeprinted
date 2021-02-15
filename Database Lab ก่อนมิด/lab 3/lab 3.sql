DROP TABLE Teacher;
DROP TABLE Subject;
DROP TABLE Register;

CREATE TABLE Teacher (
    Tcode CHAR(3),
    TFname VARCHAR2(80),
    TLname VARCHAR2(80),
    FCode CHAR(3),
    DCode CHAR(3),


    PRIMARY KEY(Tcode),

	CONSTRAINT fk_fact_dept FOREIGN KEY(FCode, DCode)
		REFERENCES Dept(FCode, DCode)
);

CREATE TABLE Subject (
    SubjCode CHAR(6),
    Name_Tha VARCHAR2(80),
    Name_Eng VARCHAR2(80),
    Credit NUMBER(2),
    Desc_Tha VARCHAR2(80),
    Desc_Eng VARCHAR2(80),
    PRIMARY KEY (SubjCode)
);

CREATE TABLE Register (
    StdID CHAR(11),
    SubjCode CHAR(6),
    Year NUMBER(4),
    Semester NUMBER(1),
    Grade NUMBER(4,2),
    CONSTRAINT reg_pk PRIMARY KEY(SubjCode, StdID, Year),

    CONSTRAINT reg_fk_std FOREIGN KEY(StdID)
		REFERENCES Student(StdID),

    CONSTRAINT reg_fk_Subj FOREIGN KEY (SubjCode)
		REFERENCES Subject(SubjCode)
);