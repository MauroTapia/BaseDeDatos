SELECT 
    p.id, 
    p.name,
    (
        SELECT SUM(s.quantity) 
        FROM sells AS s 
        WHERE s.product_id = p.id
          AND EXTRACT(MONTH FROM s.created_at) = 8 
          AND EXTRACT(YEAR FROM s.created_at) = 2022
    ) AS month8,
    (
        SELECT SUM(s.quantity) 
        FROM sells AS s 
        WHERE s.product_id = p.id
          AND EXTRACT(MONTH FROM s.created_at) = 9 
          AND EXTRACT(YEAR FROM s.created_at) = 2022
    ) AS month9,
    (
        SELECT SUM(s.quantity) 
        FROM sells AS s 
        WHERE s.product_id = p.id
          AND EXTRACT(MONTH FROM s.created_at) = 10 
          AND EXTRACT(YEAR FROM s.created_at) = 2022
    ) AS month10
FROM 
    products AS p;
    
-- Subconsultas para cada mes: 
-- Cada subconsulta suma la cantidad (SUM(quantity)) de ventas para un producto específico 
-- (s.product_id = p.id) en un mes y año determinados usando EXTRACT(MONTH FROM s.created_at) y EXTRACT(YEAR FROM s.created_at).