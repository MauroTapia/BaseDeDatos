DELIMITER $$
CREATE TRIGGER setUserPass BEFORE INSERT ON users
FOR EACH ROW
BEGIN
	IF NEW.password = "" OR NEW.password IS NULL THEN
	SET NEW.password = NEW.EMAIL;
    END IF;
END
DELIMITER ;

INSERT INTO users (username, email) VALUES ("maurotest", "mauro@gmail.com");
INSERT INTO users (username, email, password) VALUES ("maurotest2", "mau@gmail.com", "1234");

SELECT * FROM users ORDER BY created_at DESC LIMIT 3;

DROP TRIGGER setUSerPass;