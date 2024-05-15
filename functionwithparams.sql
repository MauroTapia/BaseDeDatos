DELIMITER $$
CREATE FUNCTION helloHuman(humanName VARCHAR(100))
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN 
    RETURN CONCAT('Hello World ', humanName);
END$$
DELIMITER ;

-- LLamarla
SELECT helloHuman('mauro');

-- eliminarla
DROP FUNCTION sayHello;