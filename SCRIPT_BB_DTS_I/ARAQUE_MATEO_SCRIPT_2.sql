USE db_ticktack;
/* CONSULTAS */

SELECT * FROM users LIMIT 100;

SELECT count(*) FROM users;

/* CONSULTAS */

/* RENOMBRAR DE FORMA VISUAL (AS) */
SELECT 
id as identificador,
name as nombre_usuario
FROM users;

/* UPPER-LOWER-LENGTH-CONCAT */
SELECT 
id,
UPPER(name) AS nombre_mayuscula,
LOWER(name) AS nombre_minuscula,
LENGTH(name) AS longitud,
(20*2) AS operacion,
CONCAT('*',id,':',name,'*') AS id_nombre,
CONCAT(id,name) AS id_nombres
FROM users;

/* UPPER = MAYUSCULA */
SELECT 
id,
UPPER(name) AS nombre_mayuscula
FROM users;

/* LOWER = MINUSCULA */
SELECT 
id,
LOWER(name) AS nombre_minuscula
FROM users;

/* LENGTH = LONGITUD , OPERACIONES Y CONCAT = UNIR VARIAS COLUMNAS */
SELECT 
id,
LENGTH(name) AS longitud,
(20*2) AS operacion,
CONCAT('*',id,':',name,'*') AS id_nombre,
CONCAT(id,name) AS id_nombres
FROM users;

/* COPIA DE UNA TABLA */
DROP TABLE IF EXISTS users_bck;
CREATE TABLE users_bck AS
SELECT *
FROM users;

SELECT * FROM users_bck;

/* COPIA DE UNA TABLA */
DROP TABLE IF EXISTS users_bck2;
CREATE TABLE users_bck2 AS
SELECT 
id AS identificator,
UPPER(name) AS nombre_mayuscula,
LOWER(name) AS nombre_minuscula,
LENGTH(name) AS longitud,
(20*2) AS operacion,
CONCAT('*',id,' : ',name,'*') AS id_nombre,
CONCAT(id,name) AS id_nombres
FROM users;

SELECT * FROM users_bck2;

/* AGREGAR COLUMNAS */
ALTER TABLE users 
ADD COLUMN nombre_mayus VARCHAR(100);

ALTER TABLE users 
ADD COLUMN nombre_minus VARCHAR(100);

ALTER TABLE users 
ADD COLUMN nombre_longitud VARCHAR(100);

ALTER TABLE users 
ADD COLUMN operacion DOUBLE;

ALTER TABLE users 
ADD COLUMN id_nombre VARCHAR(100);

SELECT * FROM users;

/* MOVER A LA COLUMNA DATOS = UPDATE */
SET SQL_SAFE_UPDATES = 0;

UPDATE users 
SET nombre_mayus = UPPER(name);

UPDATE users 
SET nombre_minus = LOWER(name);

UPDATE users 
SET nombre_longitud = LENGTH(name);

UPDATE users 
SET operacion = (20*2);

UPDATE users 
SET id_nombre = CONCAT(id,'--',name);















