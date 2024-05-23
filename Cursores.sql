DELIMITER $$
CREATE PROCEDURE executeCartByUser(pUserId INT)
BEGIN 
	DECLARE userID, pID, quan INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE cart CURSOR FOR SELECT user_id, product_id, quantity FROM carts WHERE user_id = pUserId;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = true;
    OPEN cart;
    my_loop: LOOP
		FETCH cart INTO userId, pID, quan;
        IF done THEN LEAVE my_loop; END IF;
        SELECT CONCAT_WS(" ", "user:", userId, "prod:", pID);
	END LOOP;
    CLOSE cart;
END $$
DELIMITER ;

CALL executeCartByUser(3);