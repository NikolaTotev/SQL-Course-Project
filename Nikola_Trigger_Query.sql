CREATE TRIGGER OnStaffInsertUpdate ON Staff
FOR INSERT,UPDATE
AS
IF EXISTS (SELECT *
           FROM Staff st 
           JOIN inserted AS i 
           ON st.EGN = i.EGN
           WHERE i.StartDate>i.EndDate
          )
BEGIN
RAISERROR ('Wrong staff input!',1,1);
ROLLBACK TRANSACTION;
RETURN 
END;

Drop trigger OnStaffInsertUpdate
INSERT INTO Staff VALUES ('9624565390', 'Laura', 'Lopez', 'Chef', 1200,	1267,'20110111 11:00:00 AM', '20100111 11:00:00 AM');
