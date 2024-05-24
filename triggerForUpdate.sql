DELIMITER $$
CREATE TRIGGER setStockProductCarts AFTER UPDATE ON products
FOR EACH ROW
BEGIN
	IF NEW.stock = 0 THEN
    UPDATE carts SET quantity = 0 WHERE product_id = NEW.id;
    END IF;
END;
DELIMITER ;

SELECT * FROM products WHERE id = 54;
SELECT * FROM carts WHERE product_id = 54;
UPDATE products SET stock = 0 WHERE id = 54;

DROP TRIGGER setStockProductCarts;