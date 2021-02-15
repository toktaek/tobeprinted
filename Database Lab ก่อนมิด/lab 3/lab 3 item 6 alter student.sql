

ALTER TABLE Student
    ADD Tcode CHAR(3);
    
UPDATE Student SET Tcode='T01' WHERE Tcode IS NULL;

ALTER TABLE Student
ADD CONSTRAINT fk_tch
  FOREIGN KEY (Tcode)
  REFERENCES Teacher(Tcode);
    
