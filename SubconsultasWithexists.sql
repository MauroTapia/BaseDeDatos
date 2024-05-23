SELECT 
p.name 
FROM products AS p
WHERE EXISTS ( SELECT id FROM carts AS c WHERE c.product_id = p.id);

-- La consulta selecciona el nombre de cada producto de la tabla products
-- que tiene al menos una entrada en la tabla carts. En otras palabras, estamos
-- listando los nombres de los productos que están en algún carrito de compras.