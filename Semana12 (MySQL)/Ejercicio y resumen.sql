/*BASE DE DATOS: EMPRESA*/

/*1. CREACIÓN*/
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamentos(
id_departamento INT PRIMARY KEY,
nombre_departamento VARCHAR(50)
);

CREATE TABLE empleados(
id_empleado INT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
salario DECIMAL(10,2),
fecha_ingreso DATE,
id_departamento INT,

FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

/*2. INSERTAR DATOS*/
INSERT INTO departamentos VALUES
(1,'Sistemas'),
(2,'Ventas'),
(3,'Recursos Humanos');

INSERT INTO empleados VALUES
(1,'Carlos','Perez',2500,'2020-05-10',1),
(2,'Ana',' Lopez ',3200,'2018-03-15',2),
(3,'Luis','Gomez',1800,'2022-01-20',1),
(4,'Maria','Torres',4000,'2017-07-01',2),
(5,'Jorge','Ramirez',1500,'2023-06-10',3);

/***********************/
/*PARTE 1: SUBCONSULTAS*/
/***********************/

/*1. Empleados con salario mayor al promedio*/
SELECT nombre, salario
FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados); #WHERE salario > 2600

/*2. Empleados del departamento "Ventas" (usando IN)*/
#"IN" Compara valores
SELECT nombre
FROM empleados
WHERE id_departamento IN (
    SELECT id_departamento 
    FROM departamentos 
    WHERE nombre_departamento = 'Ventas'  #Restriccion de solo departamento de "ventas"
);

/*3. EXISTS (empleados que sí tienen departamento válido)*/
#"EXISTS" verifica existencia
SELECT nombre
FROM empleados e
WHERE EXISTS (
    SELECT * 
    FROM departamentos d
    WHERE d.id_departamento = e.id_departamento
);

/*****************************/
/*PARTE 2: FUNCIONES DE FECHA*/
/*****************************/
/*4. Año de ingreso (Muestra solo el año)*/
SELECT nombre, YEAR(fecha_ingreso) AS año
FROM empleados;

/*5. Mes de ingreso(Muestra solo el mes)*/
SELECT nombre, MONTH(fecha_ingreso) AS mes
FROM empleados;

/*6. Días trabajados hasta hoy (La fecha lo trasforma en dia hasta la fecha actual)*/
SELECT nombre, DATEDIFF(CURDATE(), fecha_ingreso) AS dias_trabajados
FROM empleados;

/*7. Aumentar 30 días a la fecha (Aumenta 30 dias a la fecha de ingreso)*/
SELECT nombre, DATE_ADD(fecha_ingreso, INTERVAL 30 DAY) AS nueva_fecha
FROM empleados;

/******************************/
/*PARTE 3: FUNCIONES DE CADENA*/
/******************************/
/*8. Nombre completo (Junta la información de 2 tablas diferentes) */
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo
FROM empleados;

SELECT CONCAT(nombre, ' con dalario de ', salario) AS Información_Salarial
FROM empleados;

/*9. Longitud del nombre (Muestra la cantidad de letras de la tabla)*/
SELECT nombre, LENGTH(nombre) AS longitud
FROM empleados;

/*10. Primera parte del nombre (substring)*/
SELECT SUBSTRING(nombre,1,3) AS inicio_nombre
FROM empleados;

SELECT nombre, SUBSTRING(nombre,1,3) AS inicio_nombre
FROM empleados;

/*11. Mayúsculas y minúsculas*/
SELECT nombre,
UPPER(nombre) AS mayuscula,
LOWER(nombre) AS minuscula
FROM empleados;

SELECT 
UPPER(nombre) AS mayuscula,
LOWER(nombre) AS minuscula
FROM empleados;

/*12. Quitar espacios (Quita el espacio excedente si hay en nombre)*/
SELECT TRIM(nombre) FROM empleados;

SELECT TRIM(nombre) AS Orden_nombre
FROM empleados;

/*********************/
/*PARTE 4: CONVERSIÓN*/
/*********************/
/*13. Convertir salario a entero (De decimal lo trasforma en entero)*/
SELECT nombre, CAST(salario AS SIGNED) AS salario_entero
FROM empleados;

/*14. Convertir fecha a texto (????? cambia formato no trasforma fecha a texto)*/
SELECT nombre, CAST(fecha_ingreso AS CHAR) AS fecha_texto
FROM empleados;

/***********************/
/*NIVEL PRO (COMBINADO)*/
/***********************/
/*15. Empleados con más de 3 años en la empresa*/
SELECT nombre, fecha_ingreso
FROM empleados
WHERE DATEDIFF(CURDATE(), fecha_ingreso) > 365*3;

/*16. Empleados con salario mayor al promedio + nombre completo*/
SELECT CONCAT(nombre,' ',apellido) AS nombre_completo, salario
FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);  #WHERE salirio > 2600;

/*
🧠 💡 RESUMEN MENTAL (CLAVE)

-Subconsultas
👉 “Consulta dentro de otra consulta”

-Fechas
👉 Trabajas con tiempo real (años, días, etc.)

-Cadenas
👉 Manipulas texto (nombres, strings)

-Conversión
👉 Cambias tipos de datos
*/