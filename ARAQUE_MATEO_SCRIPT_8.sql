/************************************************************************************************************
*                                    UNIVERSIDAD TECNOLOGICA  - UTE											*
*										ESCUELA DE TECNOLOGIAS												*
*										DESAROLLO DE SOFTWARE												*
*																											*
* Fuente :  				TAREA SQL - DDL - DML															*
* Desarollo :				Ing.Cristian Rivadeneira Cedeño MSc.											*
* Actualizacion : 			Fecha : 11 / 11 / 2026															*
* Autores :																									*
* - Script :				Araque Basantes Mateo Gabriel															*
************************************************************************************************************/
DROP DATABASE IF EXISTS db_tarea_1;

CREATE DATABASE db_tarea_1 CHARACTER SET utf8mb4;

USE db_tarea_1;

CREATE TABLE estudiantes(
id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
direccion varchar(100) NOT NULL,
telefono varchar(20) NOT NULL,
fecha_nacimiento DATE NOT NULL,
correo varchar(100) NOT NULL,
programa_academico varchar(50) NOT NULL,
semestre INT NOT NULL,
estado varchar(50) NOT NULL,
nacionalidad varchar(50) NOT NULL,
genero  varchar(50) NOT NULL
 );
 
 SELECT * FROM estudiantes LIMIT 100;

CREATE TABLE matriculas (
  id_matricula INT AUTO_INCREMENT PRIMARY KEY,
  id_estudiante INT NOT NULL,
  año YEAR NOT NULL,             
  semestre INT NOT NULL,
  fecha_matricula DATE NOT NULL,
  costo DOUBLE NOT NULL,
  modalidad varchar(100) NOT NULL,
  estado varchar(50) NOT NULL,
  fecha_pago DATE NOT NULL,
  nota_promedio DOUBLE NOT NULL,
  tipo_matricula varchar(100) NOT NULL,
  creditos INT NOT NULL,
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

 SELECT * FROM matriculas LIMIT 100;
 
 INSERT INTO estudiantes
(id_estudiante, nombre, apellido, direccion, telefono, fecha_nacimiento, correo, programa_academico, semestre, estado, nacionalidad, genero)
VALUES
(1,  'Juan',    'Pérez',     'Calle 123',       '123456789', '2000-01-01', 'juan.perez@gmail.com',       'Ingeniería', 1, 'Activo',   'Colombiana', 'Masculino'),
(2,  'María',   'López',     'Avenida 45',      '987654321', '1999-05-15', 'maria.lopez@gmail.com',      'Medicina',   2, 'Activo',   'Mexicana',   'Femenino'),
(3,  'Luis',    'Ramírez',   'Calle 77',        '321654987', '2001-03-12', 'luis.ramirez@gmail.com',     'Derecho',    2, 'Activo',   'Peruana',    'Masculino'),
(4,  'Ana',     'Fernández', 'Calle Las Rosas', '789654123', '1998-09-23', 'ana.fernandez@gmail.com',    'Ingeniería', 2, 'Inactivo', 'Ecuatoriana','Femenino'),
(5,  'Carlos',  'Martínez',  'Barrio Central',  '456789321', '2002-07-19', 'carlos.martinez@gmail.com',  'Medicina',   1, 'Activo',   'Chilena',    'Masculino'),
(6,  'Elena',   'Vargas',    'Calle 8',         '951753852', '1997-12-11', 'elena.vargas@gmail.com',     'Derecho',    2, 'Activo',   'Venezolana', 'Femenino'),
(7,  'Pablo',   'Sánchez',   'Calle Primavera', '147258369', '1999-11-25', 'pablo.sanchez@gmail.com',    'Economía',   1, 'Inactivo', 'Uruguaya',   'Masculino'),
(8,  'Diana',   'Gómez',     'Calle Luna',      '963852741', '2000-06-05', 'diana.gomez@gmail.com',      'Ingeniería', 2, 'Activo',   'Colombiana', 'Femenino'),
(9,  'Andrés',  'Morales',   'Avenida Sol',     '852741963', '2003-01-14', 'andres.morales@gmail.com',   'Medicina',   1, 'Activo',   'Ecuatoriana','Masculino'),
(10, 'Clara',   'Torres',    'Calle Nubes',     '753159846', '1995-08-21', 'clara.torres@gmail.com',     'Derecho',    2, 'Inactivo', 'Ecuatoriana','Femenino'),
(11, 'Pedro',   'Cruz',      'Avenida Verde',   '123789456', '2000-10-30', 'pedro.cruz@gmail.com',       'Economía',   1, 'Activo',   'Ecuatoriana','Masculino'),
(12, 'Sofía',   'Díaz',      'Calle Nueva',     '789123654', '1996-04-18', 'sofia.diaz@gmail.com',       'Ingeniería', 1, 'Activo',   'Argentina',  'Femenino'),
(13, 'Miguel',  'Torres',    'Avenida 33',      '456123789', '2002-09-30', 'miguel.torres@gmail.com',    'Medicina',   1, 'Activo',   'Paraguaya',  'Masculino'),
(14, 'Laura',   'Herrera',   'Calle Azul',      '159753486', '2001-12-05', 'laura.herrera@gmail.com',    'Economía',   2, 'Inactivo', 'Ecuatoriana','Femenino'),
(15, 'Roberto', 'Castillo',  'Calle Amarilla',  '951357258', '1998-02-22', 'roberto.castillo@gmail.com', 'Derecho',    2, 'Activo',   'Venezolana', 'Masculino');



INSERT INTO matriculas
(id_matricula, id_estudiante, año, semestre, fecha_matricula, costo, modalidad, estado, fecha_pago, nota_promedio, tipo_matricula, creditos)
VALUES
(1,  1,  2024, 1, '2024-02-01', 1200.00, 'Presencial', 'Activo',   '2024-02-05', 10.00, 'Nueva',     20),
(2,  2,  2024, 2, '2024-07-01', 1500.00, 'Virtual',    'Activo',   '2024-07-05',  4.30, 'Reingreso', 18),
(3,  3,  2024, 2, '2024-01-15', 1300.00, 'Presencial', 'Activo',   '2024-01-20', 10.00, 'Nueva',     21),
(4,  4,  2023, 2, '2023-08-10', 1100.00, 'Presencial', 'Inactivo', '2023-08-15',  3.50, 'Reingreso', 19),
(5,  5,  2024, 1, '2024-02-12', 1250.00, 'Virtual',    'Activo',   '2024-02-18',  4.20, 'Nueva',     20),
(6,  6,  2023, 2, '2023-07-25', 1400.00, 'Virtual',    'Activo',   '2023-07-30',  9.00, 'Reingreso', 22),
(7,  7,  2024, 1, '2024-01-10', 1150.00, 'Presencial', 'Activo',   '2024-01-14', 10.00, 'Nueva',     19),
(8,  8,  2024, 2, '2024-02-20', 1220.00, 'Virtual',    'Activo',   '2024-02-24',  8.00, 'Nueva',     20),
(9,  9,  2023, 1, '2023-08-05', 1300.00, 'Presencial', 'Activo',   '2023-08-10',  7.50, 'Reingreso', 18),
(10, 10, 2024, 2, '2024-07-10', 1500.00, 'Virtual',    'Inactivo', '2024-07-15',  9.50, 'Reingreso', 20),
(11, 11, 2023, 1, '2023-02-02', 1350.00, 'Presencial', 'Activo',   '2023-02-06',  3.50, 'Nueva',     21),
(12, 12, 2024, 1, '2024-01-30', 1280.00, 'Virtual',    'Activo',   '2024-02-03',  7.20, 'Nueva',     20),
(13, 13, 2023, 1, '2023-07-15', 1450.00, 'Presencial', 'Activo',   '2023-07-20', 10.00, 'Reingreso', 22),
(14, 14, 2024, 2, '2024-02-25', 1180.00, 'Virtual',    'Activo',   '2024-03-01',  4.20, 'Nueva',     19),
(15, 15, 2024, 2, '2024-07-05', 1400.00, 'Presencial', 'Activo',   '2024-07-09', 10.00, 'Reingreso', 18);

/* SE UPDATEA LOS REGISTROS DE ESTUDIANTES*/

UPDATE estudiantes 
SET 
	direccion = 'Av.Alamos S23-25',
    telefono = '987555489',
    correo = 'juan.perez_525@gmail.com',
    nacionalidad = 'Ecuatoriana'
WHERE id_estudiante = 1;

UPDATE estudiantes 
SET 
	direccion = 'Av. Diego de Almagro'
WHERE id_estudiante = 2;

UPDATE estudiantes 
SET 
	direccion = 'Av.Alamos S23-25',
    telefono = '986321489',
    programa_academico = 'Medicina'
WHERE id_estudiante = 3;

UPDATE estudiantes 
SET 
	direccion = 'Av. Mariana de Jesús E6-136 y Av. Amazonas'
WHERE id_estudiante = 4;

UPDATE estudiantes 
SET 
	direccion = 'Av. Teniente Hugo Ortiz'
WHERE id_estudiante = 5;

UPDATE estudiantes 
SET 
	direccion = 'Garcia Moreno'
WHERE id_estudiante = 6;

UPDATE estudiantes 
SET 
	direccion = 'Calle Diego de Almagro'
WHERE id_estudiante = 7;

UPDATE estudiantes 
SET 
	direccion = 'Av.Lira Ñan',
    telefono = '987159357',
    nacionalidad = 'Ecuatoriana'
WHERE id_estudiante = 8;

UPDATE estudiantes 
SET 
	direccion = 'Calderon'
WHERE id_estudiante = 9;

UPDATE estudiantes 
SET 
	direccion = 'Av. Mariana de Jesus '
WHERE id_estudiante = 10;

UPDATE estudiantes 
SET 
	apellido = 'Ramirez',
	direccion = 'Avenida Moran Valverde'
WHERE id_estudiante = 11;

UPDATE estudiantes
SET 
	direccion = "Av. Mariana de Jesús E6-139 y Av. Amazonas"
WHERE id_estudiante = 12;
    
UPDATE estudiantes
SET 
	direccion = "Av.Juan Leon Mera ",
    correo = "miguel.torres7725@gmail.com"
WHERE id_estudiante = 13;
    
UPDATE estudiantes
SET 
	apellido = "Hernandez",
	direccion = "Av. Amazonas ",
    programa_academico = "Medicina",
    nacionalidad= "Argentina"
WHERE id_estudiante = 14;
    
UPDATE estudiantes
SET 
	direccion = "Calle Rio de Janeiro"
WHERE id_estudiante = 15;


/* SE UPDATEA LOS REGISTROS DE MATRICULAS*/

UPDATE matriculas 
SET 
    año = 2023, 
	costo = 1000.00 
WHERE id_matricula = 1;

UPDATE matriculas 
SET 
    año = 2023, 
    costo = 1800.00, 
    tipo_matricula = 'Reingreso' 
WHERE id_matricula = 2;

UPDATE matriculas 
SET 
    tipo_matricula = 'Reingreso'
WHERE id_matricula = 3;

UPDATE matriculas 
SET 
	costo = 3000.00, 
    estado = 'Activo', 
    tipo_matricula = 'Nueva', 
    creditos = 25 
WHERE id_matricula = 4;

UPDATE matriculas 
SET 
    tipo_matricula = 'Nueva'
WHERE id_matricula = 6;

UPDATE matriculas 
SET 
    costo = 1700.00, 
    modalidad = 'Presencial', 
    estado = 'Activo' 
WHERE id_matricula = 10;

UPDATE matriculas 
	SET tipo_matricula = 'Reingreso' 
WHERE id_matricula = 11;

UPDATE matriculas 
SET 
    año = 2024, 
    costo = 3000.00, 
    modalidad = 'Virtual',
	tipo_matricula = 'Nueva' 
WHERE id_matricula = 13;

UPDATE matriculas
SET 
    semestre = 1 
WHERE id_matricula = 14;

UPDATE matriculas 
SET 
    año = 2024,
    semestre = 1,
    modalidad = 'Virtual',
    tipo_matricula = 'Nueva',
    creditos = 30 
WHERE id_matricula = 15;

 SELECT * FROM matriculas LIMIT 100;