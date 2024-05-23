-- 
SELECT
 name
 , category_id
 , ROW_NUMBER() OVER(PARTITION BY category_id ORDER BY category_id, name) AS orderByCategory
 , SUM(stock) OVER(PARTITION BY category_id) AS categoryStock
 FROM products
 order by category_id, name