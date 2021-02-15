CREATE TABLE Book(
    BookID CHAR(3),
    BookName  VARCHAR2(200),
    BookPrice NUMBER(6,2),
    BookAmount NUMBER(3),

    CONSTRAINT BookID_pk PRIMARY KEY(BookID)
);

CREATE TABLE Borrow(
    BorrowID NUMBER(4),
    STDID  CHAR(11),
    BookID  CHAR(3),
    BorrowDate DATE,
    ReturnDate DATE,

    CONSTRAINT borrow_pk PRIMARY KEY(BorrowID),
    CONSTRAINT borrow_fk_std FOREIGN KEY(STDID)
		REFERENCES STUDENT(STDID),

	CONSTRAINT borrow_fk_book FOREIGN KEY(BookID)
		REFERENCES Book(BookID)
);


INSERT INTO Book VALUES('B01', 'คู่มือเรียนการวิเคราะห์ระบบ'               , 250, 10);
INSERT INTO Book VALUES('B02', 'คู่มือใช้งาน PowerPoint'                , 200, 5);
INSERT INTO Book VALUES('B03', 'คู่มือใช้งาน Mac OS X'                , 150, 6);
INSERT INTO Book VALUES('B04', 'Basic iOS App Development'        , 233, 5);
INSERT INTO Book VALUES('B05', 'Professional ASP.NET Programming' , 200, 4);
INSERT INTO Book VALUES('B06', 'เรียน Database อย่างไรให้ไร้ F'         , 99, 5);


INSERT INTO Borrow VALUES(1, '623021039-4'         , 'B01', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('25/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(2, '623021039-5'         , 'B02', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('25/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(3, '623021039-6'         , 'B03', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('25/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(4, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('25/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(5, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(6, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(7, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(8, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(9, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(10, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(11, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(12, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(13, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));
INSERT INTO Borrow VALUES(14, '623021039-7'         , 'B04', TO_DATE('24/2/2015','DD/MM/YYYY'), TO_DATE('24/2/2015','DD/MM/YYYY'));



CREATE VIEW LAB6_BookPrice
AS
SELECT BOOKID, BOOKNAME, BOOKAMOUNT, BOOKPRICE, BOOKAMOUNT * BOOKPRICE TotalPrice
FROM BOOK;

CREATE VIEW  LAB6_BorrowDetail
AS
SELECT STDID, STDFNAME, STDLNAME, BOOKNAME, BORROWDATE, RETURNDATE
FROM(
    SELECT STU.STDID, STU.STDFNAME, STU.STDLNAME, B.BOOKNAME, BOR.BORROWDATE, BOR.RETURNDATE
    FROM BORROW BOR
        INNER JOIN STUDENT STU ON BOR.STDID = STU.STDID
        INNER JOIN BOOK B on B.BOOKID = BOR.BOOKID
        )
ORDER BY STDID,BORROWDATE ;



CREATE VIEW  LAB6_StudentBorrow
AS
SELECT STDID, STDFNAME, STDLNAME, COUNT(*) Amount
FROM(
    SELECT STU.STDID, STU.STDFNAME, STU.STDLNAME
    FROM BORROW BOR
        INNER JOIN STUDENT STU ON BOR.STDID = STU.STDID
        )
GROUP BY STDID, STDFNAME, STDLNAME
ORDER BY STDFNAME ;


CREATE VIEW  LAB6_BookBorrow AS
SELECT BOOKID, BOOKNAME, COUNT(*) - 1 Amount
FROM(
    SELECT BOOKID, BOOKNAME
    FROM BOOK
    UNION ALL
    SELECT BORROW.BOOKID, BOOK.BOOKNAME
    FROM BORROW
        INNER JOIN BOOK  on BOOK.BOOKID = BORROW.BOOKID
    )
GROUP BY BOOKID, BOOKNAME
ORDER BY BOOKID;



