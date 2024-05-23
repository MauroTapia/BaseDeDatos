-- Aleatorio decimal entre 0 y 1
SELECT RAND();

-- Numero techo
SELECT CEIL(1.2);

-- Numero piso
SELECT FLOOR(1.2);

-- Redondea
SELECT ROUND(1.6);

-- Aleatorio entre 0 y 10
SELECT ROUND( RAND() * 10);

-- Aleatorio entre 4 y 10
SELECT ROUND( 4 + RAND() * 6); 