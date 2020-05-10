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

