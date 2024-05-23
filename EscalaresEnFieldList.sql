SELECT
p.id, p.name,
(	SELECT COUNT(id) FROM carts AS c WHERE p.id = c.product_id
	AND c.created_at BETWEEN "2023-07-01" AND "2023-07-31" ) AS q_jul_23,
(	SELECT COUNT(id) FROM carts AS c WHERE p.id = c.product_id
	AND c.created_at BETWEEN "2023-01-01" AND "2023-12-31" ) AS q23
FROM products AS p;