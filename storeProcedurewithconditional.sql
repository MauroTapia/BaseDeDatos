DELIMITER $$
CREATE FUNCTION divTwoNumbers(num1 INT, num2 INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE calc FLOAT DEFAULT 0;
    IF num2 <> 0 THEN
        SET calc = num1 / num2;
    ELSE
        RETURN 0;
    END IF;
    RETURN calc;
END $$
DELIMITER ;

-- Ejemplo de llamada a la función
SELECT divTwoNumbers(200, 2);
