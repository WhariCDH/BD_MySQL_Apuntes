✅ SEMANA 7 — Comandos DML, DCL e Índices

***********************************************************
⭐ 1. DML (Data Manipulation Language)

Sirve para trabajar con los datos dentro de las tablas.
**************************
🔵 INSERT → insertar datos

INSERT INTO clientes
VALUES (1,'Carlos','Lima');

📌 Movimiento mental
👉 Crear registros.
**************************
🔵 UPDATE → modificar datos

UPDATE clientes
SET ciudad = 'Arequipa'
WHERE id_cliente = 1;

📌 MUY EXAMEN
👉 Siempre usar WHERE.
**************************
🔵 DELETE → eliminar datos

DELETE FROM clientes
WHERE id_cliente = 1;

👉 Borra solo ese registro.

***********************************************************
⭐ 2. DCL (Data Control Language)

Sirve para dar permisos o quitarlos.

Esto ya es nivel más profesional 😎

**************************
🔵 GRANT → dar permisos

GRANT SELECT , INSERT
ON tienda_sql.clientes
TO 'usuario1'@'localhost';

👉 Ese usuario solo podrá:

ver datos
insertar

**************************
🔵 REVOKE → quitar permisos

REVOKE INSERT
ON tienda_sql.clientes
FROM 'usuario1'@'localhost';

***********************************************************
⭐ 3. Gestión de Índices (MUY IMPORTANTE RENDIMIENTO)

Los índices sirven para:

⚡ acelerar consultas.

Como un índice de libro.

**************************
🔵 Crear índice

CREATE INDEX idx_nombre
ON clientes(nombre);

👉 Buscar por nombre será más rápido.

**************************
🔵 Ver índices

SHOW INDEX FROM clientes;

**************************
🔵 Eliminar índice

DROP INDEX idx_nombre ON clientes;

***********************************************************
🔥 COSAS MÁS IMPORTANTES DE ESTA SEMANA (DE VERDAD)
💡 DML = trabajar datos
💡 DCL = seguridad usuarios
💡 Índices = rendimiento