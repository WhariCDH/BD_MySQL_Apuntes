/*BASE DE DATOS: BANCO*/

/*1: CREAR BASE*/
CREATE DATABASE banco;
USE banco;

/*2: TABLAS PRINCIPALES*/
#CLIENTES
CREATE TABLE clientes(
id_cliente INT PRIMARY KEY,
nombre VARCHAR(50),
ciudad VARCHAR(50)
);

#CUENTAS
CREATE TABLE cuentas(
id_cuenta INT PRIMARY KEY,
id_cliente INT,
tipo VARCHAR(30),
saldo DECIMAL(10,2),

FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

#TRANSACCIONES
CREATE TABLE transacciones(
id_transaccion INT PRIMARY KEY,
id_cuenta INT,
monto DECIMAL(10,2),
tipo VARCHAR(20),

FOREIGN KEY (id_cuenta) REFERENCES cuentas(id_cuenta)
);

/*3: INSERTAR DATOS*/
#CLIENTES
INSERT INTO clientes VALUES
(1,'Carlos','Lima'),
(2,'Ana','Cusco'),
(3,'Luis','Arequipa'),
(4,'Sofia','Piura');

#CUENTAS
INSERT INTO cuentas VALUES
(101,1,'Ahorro',1500),
(102,2,'Corriente',2500),
(103,3,'Ahorro',1000);

#OJO: Sofia NO tiene cuenta (importante para LEFT JOIN 😈)

#TRANSACCIONES
INSERT INTO transacciones VALUES
(1,101,200,'Deposito'),
(2,101,100,'Retiro'),
(3,102,500,'Deposito');

/*****************************/
/*AHORA LO IMPORTANTE → JOINS*/
/*****************************/

/*****************************/
/*1: INNER JOIN*/
#Solo lo que coincide en ambas tablas

SELECT c.nombre, cu.tipo, cu.saldo
FROM clientes c
INNER JOIN cuentas cu
ON c.id_cliente = cu.id_cliente;

/*
✔ muestra clientes CON cuentas
❌ Sofia no aparece
*/

#Ejemplo:

SELECT cl.nombre, cl.ciudad, cu.tipo, cu.saldo
FROM clientes cl
INNER JOIN cuentas cu
ON cl.id_cliente = cu.id_cliente;
/*****************************/

/*****************************/
/*2: LEFT JOIN*/
#Todos los clientes aunque no tengan cuenta

SELECT c.nombre, cu.tipo, cu.saldo
FROM clientes c
LEFT JOIN cuentas cu
ON c.id_cliente = cu.id_cliente;

/*
✔ Sofia aparece
✔ pero con NULL
*/

#Ejemplo:

SELECT cl.nombre, cl.ciudad, cu.tipo, cu.saldo
FROM clientes cl
LEFT JOIN cuentas cu
ON cl.id_cliente = cu.id_cliente;

/*****************************/

/*****************************/
/*3: RIGHT JOIN*/
#Todas las cuentas aunque no haya cliente (poco común)

SELECT c.nombre, cu.tipo, cu.saldo
FROM clientes c
RIGHT JOIN cuentas cu
ON c.id_cliente = cu.id_cliente;
/*****************************/

/*****************************/
/*4: CROSS JOIN (COMBINACIÓN TOTAL)*/
#Combina todo con todo, peligroso si hay muchos datos
SELECT c.nombre, cu.tipo
FROM clientes c
CROSS JOIN cuentas cu;

#ejemplo

SELECT cl.nombre, cl.ciudad, cu.tipo, cu.saldo
FROM clientes cl
CROSS JOIN cuentas cu;
/*****************************/