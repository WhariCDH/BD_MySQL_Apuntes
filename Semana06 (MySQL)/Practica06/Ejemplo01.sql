/*Crear base de datos*/
CREATE DATABASE empresa_venta;

/*Usar la base*/
USE empresa_venta;

/*Crear tabla CLIENTE*/
CREATE TABLE cliente(
id_cliente INT PRIMARY KEY,   #"PRIMARY KEY" identifica único
nombre VARCHAR(50),           #"VARCHAR" texto
direccion VARCHAR(100),
telefono VARCHAR(20)          
); 

CREATE TABLE producto(
id_producto INT PRIMARY KEY,
nombre_producto VARCHAR(50),
precio DECIMAL(10,2),         #"DECIMAL" se usa siempre para dinero
stock INT
);

/*Crear tabla venta (con FK)*/
CREATE TABLE venta(
id_venta INT PRIMARY KEY,
id_cliente INT,
id_producto INT,
cantidad INT,
fecha DATE,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),   #FK conecta tablas
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

/**********************************/
/*Modificar Tabla (ALTER)*/
/**********************************/

/*Agregar columna*/
ALTER TABLE cliente
ADD email VARCHAR(80);

/*Modificar tipo*/
ALTER TABLE producto
MODIFY nombre_producto VARCHAR(100);

/*Eliminar columna*/
ALTER TABLE cliente
DROP email;

/*Renombrar tabla*/
RENAME TABLE venta TO ventas;

/*Eliminar tabla*/
DROP TABLE ventas;

/*Ver tabla creadas*/
SHOW TABLES;

/*Ver estructura*/
DESCRIBE cliente;