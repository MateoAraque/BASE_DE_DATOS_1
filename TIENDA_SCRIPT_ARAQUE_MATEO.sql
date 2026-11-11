/************************************************************************************************************
*                                    UNIVERSIDAD TECNOLOGICA  - UTE											*
*										ESCUELA DE TECNOLOGIAS												*
*										DESAROLLO DE SOFTWARE												*
*																											*
* Fuente :  				Consultas (DDL-DML)																*
* Desarollo :				Ing.Cristian Rivadeneira Cedeño MSc.											*
* Actualizacion : 			Fecha : 09 / 11 / 2026															*
* Autores :																									*
* - Script :				Araque Mateo Gabriel															*
************************************************************************************************************/

DROP DATABASE IF EXISTS db_tienda_v1;
/*TENER CUIDADO CON DROP SIEMPRE VERIFICAR QUE REALIZA Y SI NO BORRAR*/

CREATE DATABASE db_tienda_v1 CHARACTER SET utf8mb4;
/*Llamamos a la base de datos*/

USE db_tienda_v1;
/*Creamos Tabla Fabricantes*/

CREATE TABLE fabricantes (
  id_fabricante INT  AUTO_INCREMENT PRIMARY KEY,
  nombre_fabricante VARCHAR(100) NOT NULL
);

SELECT * FROM fabricantes LIMIT 100;
/*Visualizamos Script*/

CREATE TABLE productos (
 id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 nombre_prod VARCHAR(100) NOT NULL,
 precio_prod DOUBLE NOT NULL,
 id_fabricante INT  NOT NULL,
 FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id_fabricante)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*Creamos Tabla Productos*/

SELECT * FROM fabricantes LIMIT 100;

/* INSERT REGISTROS */

/* 1 FORMA */
INSERT INTO fabricantes (id_fabricante,nombre_fabricante )  VALUES(1, 'Asus');
INSERT INTO fabricantes (id_fabricante,nombre_fabricante )  VALUES(2, 'Lenovo');
INSERT INTO fabricantes (id_fabricante,nombre_fabricante )  VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricantes (id_fabricante,nombre_fabricante )  VALUES(4, 'Samsung');
INSERT INTO fabricantes (id_fabricante,nombre_fabricante )  VALUES(5, 'Seagate');

SELECT count(*) FROM fabricantes ;
/* CUENTA LOS VALORES QUE HAY EN LA TABLA */

/* 2 FORMA */
INSERT INTO fabricantes VALUE(6, 'Crucial');
INSERT INTO fabricantes VALUE(7, 'Gigabyte');
INSERT INTO fabricantes VALUES(8, 'Huawei');
INSERT INTO fabricantes VALUES(9, 'Xiaomi');
INSERT INTO fabricantes VALUES(10,'Legion');

/* SEGUNDA MANERA DE INSERTAR REGISTROS */

describe fabricantes;
/*FUNCIONA PARA VISUALIZAR QUE TIPO Y QUE CONTIENE CADA REGISTRO*/

/* 3 FORMA */
INSERT INTO fabricantes (nombre_fabricante )  VALUES('Dell');
INSERT INTO fabricantes (nombre_fabricante )  VALUES('Apple');


/* 2 FORMA */
/* INSERT DE PRODUCTOS */
SELECT * FROM productos LIMIT 100;
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('Disco Duro SATA3 1TB',86.99,5);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('Memoria RAM DDR4 8GB',120.00,6);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('Disco SSD 1 TB',150.99,4);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('GeForce GTX 1050Ti',185.00,7);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('GeForce GTX 1080 Xtreme',755.00,6);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('Monitor 24 LED Full HD',202.00,1);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('Monitor 27 LED Full HD',245.99,1);
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)  VALUES('Portatil Yoga 520',559.00,2);

describe productos;

SELECT * FROM productos LIMIT 100;

/* 3 FORMA */
INSERT INTO productos (nombre_prod,precio_prod,id_fabricante)
																VALUES('Portátil Ideapd 320',444,5),
																	  ('Portátil Ideapd 310',180,6),
                                                                      ('Impresora HP Deskjet XX70', 59.99,7);
                                                                
/* ALTER PARA EDITAR UNA TABLA */

ALTER TABLE fabricantes
ADD COLUMN  direccion VARCHAR(255) NULL;
ALTER TABLE fabricantes
ADD COLUMN  telefono VARCHAR(15) NULL;
ALTER TABLE fabricantes
ADD COLUMN correo_electronico VARCHAR(100) NULL;
ALTER TABLE fabricantes
ADD COLUMN pagina_web VARCHAR(255) NULL;
ALTER TABLE fabricantes
ADD COLUMN fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP;


/* EJEMPLO DE MODIFICAR */
UPDATE fabricantes
SET 
    direccion = '701 S Miami Ave, Miami, FL 33130, Estados Unidos',
    telefono = '+1 786-843-4350',
    correo_electronico = 'soporte_apple@apple.com',
    pagina_web = 'https://www.aple.com',
    fecha_creacion = now()



