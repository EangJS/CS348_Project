DROP PROCEDURE IF EXISTS InsertSession;
DELIMITER //
CREATE PROCEDURE InsertSession(
    IN p_CourseName VARCHAR(255),
    IN p_Section VARCHAR(255),
    IN p_Type VARCHAR(255),
    IN p_DayOfWeek VARCHAR(255),
    IN p_PublishedStart VARCHAR(255),
    IN p_PublishedEnd VARCHAR(255),
    IN p_Location VARCHAR(255),
    IN p_Email VARCHAR(255)
)
BEGIN
    
    DECLARE locationExists INT;
    DECLARE professorExists INT;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    START TRANSACTION;

    -- Check if the location exists
    SELECT COUNT(*) INTO locationExists
    FROM Locations
    WHERE LocationId = p_Location;

    -- Check if the professor exists
    SELECT COUNT(*) INTO professorExists
    FROM Faculty
    WHERE Email = p_Email;    

    -- Insert data into Sessions table
    INSERT INTO Sessions
    VALUES (p_CourseName, p_Section,p_Type,p_DayOfWeek,p_PublishedStart,p_PublishedEnd,p_Location,p_Email);

-- For the sake of using transactions for this project, we will perform the insert first
-- If location does not exist, rollback
    IF locationExists = 0 THEN
	ROLLBACK;
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Location does not exist!";        
    END IF;

    -- If professor does not exist, insert it with default values
    IF professorExists = 0 THEN
        ROLLBACK;
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Faculty does not exist!"; 
    END IF;
    COMMIT;
END;
//
DELIMITER ;
GRANT EXECUTE ON PROCEDURE catalog.InsertSession TO 'backenduser';