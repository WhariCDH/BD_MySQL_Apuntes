/*Crear base*/
CREATE DATABASE tienda_sql;

USE tienda_sql;

/*Creacion de tabla*/
CREATE TABLE cliente(
id_cliente INT PRIMARY KEY,
nombre VARCHAR(60),
ciudad VARCHAR(50)
);

CREATE TABLE categorias(
id_categoria INT PRIMARY KEY,
nombre_categoria VARCHAR(50)
);

CREATE TABLE productos(
id_producto INT PRIMARY KEY,
nombre_producto VARCHAR(80),
precio DECIMAL(8,2),
stock INT,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE ventas (
id_venta INT PRIMARY KEY,
fecha DATE,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE detalle_venta (
id_detalle INT PRIMARY KEY,
id_venta INT,
id_producto INT,
cantidad INT,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

/*Practicar ALTER*/
ALTER TABLE clientes
ADD telefono VARCHAR(20);

#Modificar
ALTER TABLE productos
MODIFY precio DECIMAL(10,2);

#Eliminar
ALTER TABLE clientes
DROP telefono;

#Ver tablas
SHOW TABLES;

#Ver estructura
DESCRIBE productos;

#Eliminar una tabla para probar
DROP TABLE detalle_venta;
