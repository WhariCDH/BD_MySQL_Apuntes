/*BASE DE DATOS: Sistema de Ventas*/

#Crear base de datos
CREATE DATABASE ventas_db;
USE ventas_db;

/*Tabla clientes*/
CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50)
); 

/*Tabla productos*/
CREATE TABLE productos(
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10,2),
    stock INT
);

/*Tabla ventas*/
CREATE TABLE ventas(
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    fecha DATE,

    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

/*Insertar datos*/
INSERT INTO clientes VALUES
(1, 'Ana', 'Lima'),
(2, 'Luis', 'Arequipa'),
(3, 'Carlos', 'Cusco');

INSERT INTO productos VALUES
(1, 'Laptop', 3500, 10),
(2, 'Mouse', 50, 100),
(3, 'Teclado', 120, 50);

INSERT INTO ventas VALUES
(1, 1, 1, 1, '2025-01-10'),
(2, 2, 2, 2, '2025-02-15'),
(3, 1, 3, 1, '2025-03-01');

/*SEMANA 13 – PROGRAMACIÓN EN SQL*/
/*1. VARIABLES*/
#Tipos de variables

#Variables de sesión
SET @total = 0;

SELECT SUM(precio) INTO @total
FROM productos;

SELECT @total;

/*2. ASIGNACIÓN DE VARIABLES*/
SET @x = 10;
SET @y = 5;

SET @resultado = @x + @y;

SELECT @resultado;

/*3. VARIABLES EN CONSULTAS*/
SET @id = 1;

SELECT *
FROM productos
WHERE id_producto = @id;

#Llamando al id_producto 3
SET @id = 3;

SELECT *
FROM productos
WHERE id_producto = @id;

/*4. VARIABLES + OPERACIONES*/
SET @stock_total = 0;

SELECT SUM(stock) INTO @stock_total
FROM productos;

SELECT @stock_total;

#Ahora aumentamos la operación x2
SET @stock_total = 0;

SELECT SUM(stock) INTO @stock_total
FROM productos;

SET @stock_total = @stock_total *2;

SELECT @stock_total;
