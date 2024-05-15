-- CONVERT MAYUS AND MINUS
SELECT UPPER(email), LOWER (email)
FROM users

-- Remplazar un atributo
SELECT REPLACE(email, 'user', 'moron')
FROM users

-- Traer el primer string antes del @
SELECT SUBSTRING_INDEX(email, '@', 1)
FROM users

-- concat with space
SELECT CONCAT_WS(' ', 'hola', username, 'mauro')
FROM users

-- Cortar strings
SELECT SUBSTRING(email, 1, 4)
FROM users