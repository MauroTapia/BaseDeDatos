SELECT
	id,
    name,
    category_id,
    ROW_NUMBER() OVER win AS orderByCategory,
    SUM(stock) OVER win AS categoryStock,
	LAG(id) OVER win as previusRecord,
    LEAD(id) OVER win as nextRecord
FROM products 
WINDOW win AS (PARTITION BY category_id ORDER BY category_id, name)
ORDER BY category_id, name;
