----------------------------------
/* F01	D03	วิทยาการคอมพิวเตอร์	Computer Science */
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T01',	'พุธษดี'	, 'ศิริแสงตระกูล');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T02',	'สมจิตร'	, 'อาจอินทร์');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T03',	'สันติ'	, 'ทินตะนัย');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T04',	'อภิศักดิ์'	, 'พัฒนจักร');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T05',	'สมชัย'	, 'อัษฎายุทธ');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T06',	'บุญส่ง'	, 'วัฒนกิจ');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T07',	'งามนิจ'	, 'อาจอินทร์');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T08',	'ไกรสร'	, 'วงษ์พราวมาศ');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T09',	'อุรฉัตร'	, 'โคแก้ว');
INSERT INTO Teacher (Tcode, TFName, TLName) VALUES ('T10',	'ปัญญาพล'	, 'หอระตะ');
UPDATE Teacher SET FCode='F01' WHERE FCode IS NULL;
UPDATE Teacher SET DCode='D03' WHERE DCode IS NULL;

select * from TEACHER;


