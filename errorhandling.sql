DELIMITER $$
CREATE PROCEDURE insertCategori(pname VARCHAR(50))
BEGIN
	DECLARE EXIT HANDLER FOR 1146
	BEGIN
		SELECT "NO SUCH TABLE CATEGORI";
    END;
    
    INSERT INTO categori VALUES (pname);
    SELECT "SUCCES";
END;
DELIMITER ;

DROP PROCEDURE insertCategori;
CALL insertCategori('value');
CALL insertCategori('prueba');
SELECT * FROM categori;
CREATE TABLE categori(name VARCHAR(50));