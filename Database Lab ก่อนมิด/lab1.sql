SHOW user


SELECT * FROM tab;

CREATE USER <myUser>
IDENTIFIED BY <myPass>
DEFAULT TABLESPACE <tablespace_name>
TEMPORARY TABLESPACE <talbespace_name>
QUOTA UNLIMITED ON <tablespace_name>;

CREATE USER ucs2
IDENTIFIED BY p123
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON users;

//ให  สิทธิ์
GRANT resource, connect To ucs2;
GRANT <prib/rol> TO <myUser>

//create file
CREATE TABLE dogFam(
	dogID CHAR(3),
	dogName VARCHAR2(20));
	
SET linesize 120

DESC dogFam