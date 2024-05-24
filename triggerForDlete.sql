DELIMITER $$
CREATE TRIGGER deleteProductCart BEFORE DELETE ON products
FOR EACH ROW
BEGIN
    DELETE FROM carts WHERE product_id = OLD.id;
END;
DELIMITER ;

SELECT * FROM products WHERE id = 80;
SELECT * FROM carts WHERE product_id = 80;
DELETE FROM products WHERE id = 80;

-- El trigger que has creado se activa antes de que se elimine una fila de la tabla products. 
-- El propósito del trigger es asegurarse de que, cuando un producto es eliminado de products, 
-- todos los registros en la tabla carts que están relacionados con ese producto también sean eliminados.
-- OLD.id: OLD hace referencia a los valores de la fila que está siendo eliminada en la tabla products.
-- id es el valor de la columna id de esa fila específica en products.
