/*
✅ EJERCICIO — Uso REAL de Sentencias SQL
*/

CREATE DATABASE productos;
USE productos;

CREATE TABLE productos (
id_producto INT PRIMARY KEY,
nombre VARCHAR(60),
precio DECIMAL(8,2),
stock INT
);

/***************************************/
/*⭐ 1. INSERT → insertar datos*/

INSERT INTO productos
VALUES (1,'Laptop',3500.50,10);

INSERT INTO productos
VALUES (2,'Mouse',80.90,50);

/***************************************/
/*⭐ 2. SELECT → consultar datos*/

SELECT * FROM productos;

/*Consultar solo nombres:*/

SELECT nombre FROM productos;

/***************************************/
/*⭐ 3. UPDATE → modificar datos*/
UPDATE productos
SET precio = 3600.00
WHERE id_producto = 1;  #Siempre usar WHERE si no cambia toda la tabla

/***************************************/
/*⭐ 4. DELETE → eliminar fila*/
DELETE FROM productos
WHERE id_producto = 2;

/***************************************/
/*⭐ 5. TRUNCATE → eliminar TODO rápido*/
TRUNCATE TABLE productos;

/*📌 Diferencia:

DELETE → uno o varios
TRUNCATE → TODA la tabla*/

/***************************************/
/*⭐ 6. DROP → eliminar la tabla*/
DROP TABLE productos;

/***************************************/
/*⭐ 7. ALTER → modificar estructura*/
ALTER TABLE productos
ADD descripcion VARCHAR(100);

/***************************************/
/*⭐ 8. RENAME*/
RENAME TABLE productos TO articulos;

/***************************************/
/*⭐ 9. TRANSACCIONES (nivel MUY PRO del curso)*/

#Primero activamos:

START TRANSACTION;

#Insertamos:

INSERT INTO articulos
VALUES (3,'Teclado',150.00,20,'RGB');

#Si quieres guardar cambios:

COMMIT;

#Si te equivocaste:

ROLLBACK;

/*⭐ SAVEPOINT (aún más PRO)*/

SAVEPOINT punto1;

#Luego puedes volver solo hasta ese punto.

/*
🔥 RESUMEN EXAMEN (MEMORIZA)

DML
✔ INSERT
✔ SELECT
✔ UPDATE
✔ DELETE

DDL
✔ CREATE
✔ ALTER
✔ DROP
✔ RENAME
✔ TRUNCATE

TCL (transacciones)
✔ COMMIT
✔ ROLLBACK
✔ SAVEPOINT
*/