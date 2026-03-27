/*✅ EJERCICIO COMPLETO — Sistema de Ventas REAL*/

/*************************************/
/*⭐ PASO 1 → Crear tabla*/

CREATE DATABASE ventas;
USE ventas;

CREATE TABLE ventas (
id_venta INT PRIMARY KEY,
cliente VARCHAR(60),
producto VARCHAR(60),
precio DECIMAL(8,2),
cantidad INT,
fecha DATETIME
);

/*************************************/
/*⭐ PASO 2 → INSERTAR DATOS*/

INSERT INTO ventas
VALUES (1,'Carlos','Laptop',3500.00,1,NOW());

INSERT INTO ventas
VALUES (2,'Ana','Mouse',90.50,2,NOW());

INSERT INTO ventas
VALUES (3,'Luis','Teclado',150.00,1,NOW());

/*************************************/
/*⭐ PASO 3 → CONSULTAR*/

SELECT * FROM ventas;

#Ver solo de cliente y productos

SELECT cliente , producto FROM ventas;

/*************************************/
/*⭐ PASO 4 → UPDATE (modificar): Subir precio del teclado:*/

UPDATE ventas
SET precio = 180.00
WHERE id_venta = 3;


/*************************************/
/*⭐ PASO 6 → TRANSACCIONES 🔥*/

START TRANSACTION;

#Insertamos algo:

INSERT INTO ventas
VALUES (4,'Mario','Monitor',800.00,1,NOW());

#Si decides guardar:

COMMIT;

#Si decides cancelar:

ROLLBACK;

/*************************************/
/*⭐ PASO 7 → SAVEPOINT (nivel examen)*/

START TRANSACTION;

INSERT INTO ventas VALUES (5,'Pedro','USB',30.00,3,NOW());

SAVEPOINT punto1;

INSERT INTO ventas VALUES (6,'Sofia','Tablet',1200.00,1,NOW());

ROLLBACK TO punto1;

COMMIT;

/*
🚨 MOVIMIENTOS MENTALES IMPORTANTES

💡 INSERT = crear ventas
💡 SELECT = ver reportes
💡 UPDATE = corregir precios
💡 DELETE = eliminar error
💡 TRANSACTION = proteger datos
💡 ROLLBACK = salvarte del desastre
*/