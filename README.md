# 🗄️ Base de Datos I — Bases de Datos SQL

Repositorio con mis apuntes, ejercicios y proyectos de la materia **Base de Datos I**, enfocada en el diseño, creación y consulta de **bases de datos relacionales con SQL**.

![SQL](https://img.shields.io/badge/SQL-Relacional-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-recomendado-336791)
![Estado](https://img.shields.io/badge/estado-en%20progreso-yellow)

---

## 📚 Descripción

Este repositorio documenta mi proceso de aprendizaje en bases de datos relacionales como parte de mi formación en **Ingeniería de Software**. Aquí encontrarás:

- Scripts SQL organizados por tema.
- Ejercicios resueltos y prácticas de laboratorio.
- Diagramas Entidad-Relación (ER) y modelos relacionales.
- Un proyecto final integrador.

## 🎯 Objetivos de aprendizaje

- Comprender el **modelo relacional** y sus fundamentos.
- Diseñar bases de datos con **diagramas ER** y aplicar **normalización**.
- Dominar el lenguaje **SQL** (DDL, DML, DQL y DCL).
- Escribir consultas complejas con *joins*, subconsultas y funciones de agregación.
- Garantizar la **integridad de los datos** con claves y restricciones.
- Conocer conceptos de **transacciones**, **índices** y **vistas**.

## 🧭 Contenido del curso

| # | Tema | Conceptos clave |
|---|------|-----------------|
| 1 | Introducción a las bases de datos | SGBD, datos vs. información, tipos de bases de datos |
| 2 | Modelo Entidad-Relación | Entidades, atributos, relaciones, cardinalidad |
| 3 | Modelo relacional | Tablas, claves primarias y foráneas, integridad referencial |
| 4 | Normalización | 1FN, 2FN, 3FN, FNBC, dependencias funcionales |
| 5 | SQL: DDL | `CREATE`, `ALTER`, `DROP`, tipos de datos, restricciones |
| 6 | SQL: DML | `INSERT`, `UPDATE`, `DELETE` |
| 7 | SQL: consultas (DQL) | `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING` |
| 8 | Joins y subconsultas | `INNER`, `LEFT`, `RIGHT`, `FULL JOIN`, subqueries |
| 9 | Vistas e índices | `CREATE VIEW`, `CREATE INDEX`, rendimiento |
| 10 | Transacciones | `BEGIN`, `COMMIT`, `ROLLBACK`, propiedades ACID |
| 11 | Seguridad y permisos | `GRANT`, `REVOKE`, roles |

## 📁 Estructura del repositorio

```
base-de-datos-1/
├── 01-introduccion/
├── 02-modelo-entidad-relacion/
├── 03-modelo-relacional/
├── 04-normalizacion/
├── 05-ddl/
├── 06-dml/
├── 07-consultas/
├── 08-joins-subconsultas/
├── 09-vistas-indices/
├── 10-transacciones/
├── 11-seguridad/
├── proyecto-final/
│   ├── diagrama-er.png
│   ├── esquema.sql
│   ├── datos.sql
│   └── consultas.sql
└── README.md
```

> Ajusta los nombres de carpetas según cómo hayas organizado tu repositorio.

## 🛠️ Herramientas utilizadas

- **SGBD:** [PostgreSQL](https://www.postgresql.org/) (puedes adaptar los scripts a MySQL o MariaDB con pequeños cambios)
- **Cliente:** pgAdmin / DBeaver / `psql`
- **Diagramas:** draw.io / dbdiagram.io / MySQL Workbench
- **Control de versiones:** Git y GitHub

## 🚀 Cómo usar este repositorio

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/TU-USUARIO/base-de-datos-1.git
   cd base-de-datos-1
   ```

2. **Crea una base de datos:**

   ```bash
   createdb practicas_bd1
   ```

3. **Ejecuta un script:**

   ```bash
   psql -d practicas_bd1 -f 05-ddl/crear_tablas.sql
   ```

4. Explora cada carpeta en orden para seguir la progresión del curso.

## 🧪 Ejemplo rápido

```sql
-- Crear tablas
CREATE TABLE estudiantes (
    id_estudiante SERIAL PRIMARY KEY,
    nombre        VARCHAR(100) NOT NULL,
    correo        VARCHAR(120) UNIQUE NOT NULL
);

CREATE TABLE inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    id_estudiante  INT NOT NULL REFERENCES estudiantes(id_estudiante),
    curso          VARCHAR(100) NOT NULL,
    nota           NUMERIC(4,2)
);

-- Consulta con JOIN y agregación
SELECT e.nombre, COUNT(i.id_inscripcion) AS total_cursos, AVG(i.nota) AS promedio
FROM estudiantes e
LEFT JOIN inscripciones i ON i.id_estudiante = e.id_estudiante
GROUP BY e.nombre
ORDER BY promedio DESC;
```

## 🏆 Proyecto final

Diseño e implementación de una base de datos relacional completa que incluye:

- [ ] Modelo Entidad-Relación
- [ ] Modelo relacional normalizado (hasta 3FN)
- [ ] Script de creación de tablas con restricciones
- [ ] Datos de prueba
- [ ] Consultas, vistas y procedimientos de ejemplo

## 📖 Recursos recomendados

- [Documentación oficial de PostgreSQL](https://www.postgresql.org/docs/)
- [SQLBolt — Lecciones interactivas](https://sqlbolt.com/)
- [W3Schools SQL](https://www.w3schools.com/sql/)
- *Database System Concepts* — Silberschatz, Korth, Sudarshan
- *Fundamentos de Bases de Datos* — Elmasri y Navathe

## 🗺️ Próximos pasos

- Bases de datos II (SQL avanzado, optimización, procedimientos almacenados)
- Integración de bases de datos con aplicaciones web (Django, ORMs)
- Introducción a bases de datos NoSQL

## 👤 Autor

**TU NOMBRE**
Estudiante de Ingeniería de Software

- GitHub: [@tu-usuario](https://github.com/tu-usuario)
- LinkedIn: [tu-perfil](https://www.linkedin.com/in/tu-perfil)

## 📄 Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Consulta el archivo `LICENSE` para más información.
