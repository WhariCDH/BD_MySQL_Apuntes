/*BASE DE DATOS: SUPERMERCADO*/
#TABLAS
CREATE DATABASE supermercado;
USE supermercado;

CREATE TABLE productos(
id_producto INT PRIMARY KEY,
nombre VARCHAR(50),
precio DECIMAL(10,2),
categoria VARCHAR(50)
);

CREATE TABLE ventas(
id_venta INT PRIMARY KEY,
id_producto INT,
cantidad INT,
fecha DATE,

FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

#DATOS
INSERT INTO productos VALUES
(1,'Arroz',4.50,'Granos'),
(2,'Leche',3.20,'Lácteos'),
(3,'Pan',1.00,'Panadería'),
(4,'Queso',6.50,'Lácteos');

INSERT INTO ventas VALUES
(1,1,10,'2025-01-01'),
(2,2,5,'2025-01-01'),
(3,1,8,'2025-01-02'),
(4,3,20,'2025-01-02'),
(5,4,3,'2025-01-03');

/*FUNCIONES AGREGADAS*/

/*1: SUM → sumar*/
#total vendido
SELECT SUM(cantidad) AS total_productos
FROM ventas;

/*2: COUNT → contar*/
SELECT COUNT(*) AS total_ventas
FROM ventas;

/*3: AVG → promedio*/
SELECT AVG(precio) AS precio_promedio
FROM productos;

/*4: MAX → máximo*/
SELECT MAX(precio) AS producto_mas_caro
FROM productos;

/*5: MIN → mínimo*/
SELECT MIN(precio) AS producto_mas_barato
FROM productos;

/*******************************/
/*GROUP BY (MUY IMPORTANTE 💀)*/
/*******************************/
#agrupa datos

/*
ejemplo
total vendido por producto
*/

SELECT id_producto, SUM(cantidad) AS total_vendido
FROM ventas
GROUP BY id_producto;

/*CON JOIN (nivel pro)*/

SELECT p.nombre, SUM(v.cantidad) AS total_vendido
FROM ventas v
INNER JOIN productos p
ON v.id_producto = p.id_producto
GROUP BY p.nombre;

/*HAVING (FILTRO DE GRUPOS)*/
#filtra después del GROUP BY

/*
ejemplo
productos que vendieron más de 10 unidades
*/

SELECT p.nombre, SUM(v.cantidad) AS total_vendido
FROM ventas v
INNER JOIN productos p
ON v.id_producto = p.id_producto
GROUP BY p.nombre
HAVING SUM(v.cantidad) > 10;