/*✅ EJERCICIO 1 — Manipulación de Datos (DML)*/

/***********************************/

/*⭐ Paso 1 → Crear tabla*/

CREATE TABLE clientes (
id_cliente INT PRIMARY KEY,
nombre VARCHAR(60),
ciudad VARCHAR(50),
edad INT
);

/*⭐ Paso 2 → INSERT (insertar datos)*/

INSERT INTO clientes VALUES (1,'Carlos','Lima',25);
INSERT INTO clientes VALUES (2,'Ana','Cusco',30);
INSERT INTO clientes VALUES (3,'Luis','Arequipa',28);

#👉 Ahora mira los datos:

SELECT * FROM clientes;

/*⭐ Paso 3 → UPDATE (modificar)*/

#Cambia la ciudad de Ana:

UPDATE clientes
SET ciudad = 'Piura'
WHERE id_cliente = 2;

#Verifica:

SELECT * FROM clientes;

/*⭐ Paso 4 → DELETE (eliminar)*/

#Elimina a Luis:

DELETE FROM clientes
WHERE id_cliente = 3;

#Verifica:

SELECT * FROM clientes;
/**********************************************************/
/*✅ EJERCICIO 2 — Gestión de Índices (rendimiento)*/

/*⭐ Crear índice*/

CREATE INDEX idx_ciudad
ON clientes(ciudad);

#👉 Ahora búsquedas por ciudad serán más rápidas ⚡

/*⭐ Ver índice*/

SHOW INDEX FROM clientes;

/*⭐ Eliminar índice*/

DROP INDEX idx_ciudad ON clientes;

/**********************************************************/
/*✅ EJERCICIO 3 — DCL (Permisos)*/
/*⚠️ Esto depende si tu MySQL permite crear usuarios.*/

/*⭐ Crear usuario*/

CREATE USER 'practicante'@'localhost'
IDENTIFIED BY '123456';

/*⭐ Dar permisos*/

GRANT SELECT , INSERT
ON *.* 
TO 'practicante'@'localhost';

#👉 Ese usuario solo puede ver e insertar.

/*⭐ Quitar permiso*/

REVOKE INSERT
ON *.* 
FROM 'practicante'@'localhost';

/******************************************************/
/*🔥 MOVIMIENTOS MENTALES IMPORTANTES

💡 INSERT → crear filas
💡 UPDATE → corregir datos
💡 DELETE → limpiar datos
💡 INDEX → acelerar consultas
💡 GRANT → dar poder
💡 REVOKE → quitar poder*/