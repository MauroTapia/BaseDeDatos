DELIMITER $$
CREATE PROCEDURE setOne(OUT value INT)
BEGIN 
	SET value = 1; 
END$$
DELIMITER ;

CALL setOne(@value);
SELECT @value;