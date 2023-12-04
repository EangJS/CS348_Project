DROP PROCEDURE IF EXISTS UpdateSession;
DELIMITER //
CREATE PROCEDURE UpdateSession(
    IN p_CourseName VARCHAR(255),
    IN p_Section VARCHAR(255),
    IN p_Type VARCHAR(255),
    IN p_PublishedStart VARCHAR(255),
    IN p_PublishedEnd VARCHAR(255),
    IN p_Location VARCHAR(255)
)
BEGIN
    DECLARE sectionCount INT;    
    DECLARE locationExists INT;
    DECLARE professorExists INT;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    START TRANSACTION;

    -- Check if only 1 section is updated
    SELECT COUNT(*) INTO sectionCount
    FROM sessions
    WHERE Section = p_Section;

    -- Check if the location exists
    SELECT COUNT(*) INTO locationExists
    FROM Locations
    WHERE LocationId = p_Location; 

    -- Insert data into Sessions table
    Update Sessions
    SET CourseName = p_CourseName,
    Type = p_Type, PublishedStart = p_PublishedStart, 
    PublishedEnd = p_PublishedEnd,Location = p_Location
    WHERE Section = p_Section;


-- For the sake of using transactions for this project, we will perform the insert first
-- If location does not exist, rollback
    IF locationExists = 0 THEN
	ROLLBACK;
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Location does not exist!";        
    END IF;

    IF sectionCount = 0 OR sectionCount > 1 THEN
	ROLLBACK;
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Invalid section";        
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
GRANT EXECUTE ON PROCEDURE catalog.UpdateSession TO 'backenduser';