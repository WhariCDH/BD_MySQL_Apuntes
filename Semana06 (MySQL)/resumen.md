✅ Semana 6 — DDL y Gestión de Bases de Datos

***************************************************************************************
⭐ ¿Qué es DDL?

DDL significa:

👉 Data Definition Language

Sirve para:

✅ Crear bases de datos
✅ Crear tablas
✅ Modificar tablas
✅ Eliminar tablas

***************************************************************************************
⭐ 1. Crear Base de Datos

    CREATE DATABASE ventas;

Luego usarla:

    USE ventas;

***************************************************************************************
⭐ 2. Crear Tabla (MUY EXAMEN)

    CREATE TABLE cliente (
    idCliente INT PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(100)
    );

👉 Aquí defines:

Nombre tabla
Campos
Tipo de datos
PK

***************************************************************************************
⭐ 3. Tipos de datos comunes

🔵 Numéricos
INT → números enteros
DECIMAL → precios
🔵 Texto
VARCHAR → cadenas
🔵 Fecha
DATE

***************************************************************************************
⭐ 4. Modificar tabla (ALTER TABLE)

Agregar columna:

ALTER TABLE cliente
ADD telefono VARCHAR(20);

Modificar columna:

ALTER TABLE cliente
MODIFY nombre VARCHAR(100);

Eliminar columna:

ALTER TABLE cliente
DROP telefono;

***************************************************************************************
⭐ 5. Eliminar tabla

DROP TABLE cliente;

***************************************************************************************
⭐ 6. Renombrar tabla

RENAME TABLE cliente TO clientes;

***************************************************************************************
⭐ Idea MUY IMPORTANTE

DDL solo sirve para estructura

NO sirve para:

Insertar datos
Consultar
Actualizar

Eso será:

👉 DML (Semana siguiente seguramente)

***************************************************************************************
🔥 RESUMEN ULTRA CORTO PARA MEMORIZAR
CREATE DATABASE → crear BD
CREATE TABLE → crear tabla
ALTER TABLE → modificar tabla
DROP TABLE → eliminar
RENAME TABLE → renombrar