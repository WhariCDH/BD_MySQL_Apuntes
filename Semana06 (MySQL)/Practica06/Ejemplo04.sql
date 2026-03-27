/*
✅ EJEMPLO REAL — Tabla Empleados

Aquí usaremos:

✅ CHAR
✅ VARCHAR
✅ DECIMAL
✅ DATE
✅ DATETIME
✅ FLOAT
*/

CREATE DATABASE empleado;
USE empleado; 

CREATE TABLE empleados (
codigo CHAR(5),              #Algo figo como "A0001"
nombre VARCHAR(60),          #Nombre: Carlos Perez
salario DECIMAL(10,2),       #Decimal, principalmente para dinero, 2500.75
peso FLOAT,                  #Medidas aproximadas 70.5 (peso / altura / temperatura)
fecha_nacimiento DATE,       #Solo fecha (1998-04-20)
fecha_registro DATETIME      #Fecha + hora (2026-03-26 21:45:00) (registro sistema/logs/ventas)
);

/*Insertar datos*/
INSERT INTO empleados
VALUES(
'A0001',
'Juan Torres',
3200.50,
72.5,
'1995-08-10',
NOW()                #Que pone fecha y hora actual automáticamente.
);

/*Ver datos*/
SELECT * FROM empleados;

/*

🚨 COSAS IMPORTANTES DE ESTA SEMANA (MUY EXAMEN)

💡 CHAR → códigos
💡 VARCHAR → nombres
💡 DECIMAL → dinero
💡 DATE → fechas
💡 DATETIME → eventos sistema
💡 FLOAT → medidas 

*/