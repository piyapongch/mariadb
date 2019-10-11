DELIMITER //
CREATE FUNCTION random_string () 
RETURNS varchar(10)
BEGIN
    DECLARE word VARCHAR(10);
    SELECT 
        CONCAT(CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97),
            CHAR(ROUND(RAND() * 25) + 97)) INTO @random;
	SET word = @random;
	RETURN word;
END; //
DELIMITER ;