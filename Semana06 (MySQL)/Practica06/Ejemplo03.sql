/*✅ EJERCICIO 3 — Caso EXAMEN (Sistema Universidad)
⭐ CASO

Una universidad necesita una base de datos.

Se sabe que:

Existen estudiantes
Existen cursos
Un estudiante puede matricularse en varios cursos
Un curso puede tener varios estudiantes
Cada matrícula guarda la fecha de matrícula y la nota*/

CREATE DATABASE universidad;

USE universidad;

CREATE TABLE estudiantes(
id_estudiante INT PRIMARY KEY,
nombre VARCHAR(50),
edad INT,
telefono VARCHAR(60)
);

CREATE TABLE cursos(
id_curso INT PRIMARY KEY,
nombre_curso VARCHAR(60),
creditos INT
);

CREATE TABLE matricula(
id_matricula INT PRIMARY KEY,
id_estudiante INT,
id_curso INT,
fecha_matricula DATE,
nota DECIMAL(4,2),

FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

SHOW TABLES;

DESCRIBE matricula;

