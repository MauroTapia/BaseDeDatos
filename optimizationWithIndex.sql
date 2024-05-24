SELECT email, count(email)
FROM users
GROUP BY email
HAVING count(email) > 1;

CREATE INDEX users_index_email ON users(email);
ALTER TABLE users DROP INDEX users_index_email;

SHOW INDEX FROM users;
 
SELECT COUNT(id) FROM users;