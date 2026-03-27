CREATE DATABASE guardian_tale;
USE guardian_tale;

CREATE TABLE elementos(
id_elemento INT PRIMARY KEY,
nombre_elemento VARCHAR(30)
);

CREATE TABLE personajes(
id_personaje INT PRIMARY KEY,
nombre VARCHAR(50),
edad INT,
rareza VARCHAR(20),
nivel INT,
ataque INT,
defensa INT,
hp INT,
id_elemento INT,

FOREIGN KEY (id_elemento) REFERENCES elementos(id_elemento)
);

CREATE TABLE armas(
id_arma INT PRIMARY KEY,
nombre VARCHAR(50),
tipo VARCHAR(40),
ataque INT,
rareza VARCHAR(20)
);


CREATE TABLE inventario(
id_inventario INT PRIMARY KEY,
id_personaje INT,
id_arma INT,
nivel_arma INT,

FOREIGN KEY (id_personaje) REFERENCES personajes(id_personaje),
FOREIGN KEY (id_arma) REFERENCES armas(id_arma)
);

CREATE TABLE mundos(
id_mundo INT PRIMARY KEY,
nombre VARCHAR(50),
dificultad VARCHAR(30)
);

CREATE TABLE niveles(
id_nivel INT PRIMARY KEY,
id_mundo INT,
descripcion VARCHAR(60),
dificultad VARCHAR(30),

FOREIGN KEY (id_mundo) REFERENCES mundos(id_mundo)
);

CREATE TABLE misiones(
id_mision INT PRIMARY KEY,
descripcion VARCHAR(100),
xp_recompensa INT,
oro_recompensa INT
);

CREATE TABLE personaje_mision(
id_pm INT PRIMARY KEY,
id_personaje INT,
id_mision INT,
completada BOOLEAN,

FOREIGN KEY (id_personaje) REFERENCES personajes(id_personaje),
FOREIGN KEY (id_mision) REFERENCES misiones(id_mision)
);

/*INSERTAR ELEMENTOS*/
INSERT INTO elementos VALUES (1,'Fuego');
INSERT INTO elementos VALUES (2,'Agua');
INSERT INTO elementos VALUES (3,'Tierra');
INSERT INTO elementos VALUES (4,'Luz');
INSERT INTO elementos VALUES (5,'Oscuridad');
INSERT INTO elementos VALUES (6,'Básico');

SELECT * FROM elementos;

/*INSERTAMOS PERSONAJES*/
INSERT INTO personajes VALUES (1,'Knight',20,'SSR',50,800,600,5000,6);
INSERT INTO personajes VALUES (2,'Marina',25,'SSR',60,950,900,7000,2);
INSERT INTO personajes VALUES (3,'Beth',28,'SSR',65,1100,700,6500,5);
INSERT INTO personajes VALUES (4,'Vishuvac',24,'SSR',58,1000,650,6200,1);

SELECT * FROM personajes;

/*INSERTAMOS ARMA*/
INSERT INTO armas VALUES (1,'Espada del Caballero','Espada',500,'SSR');
INSERT INTO armas VALUES (2,'Ancla Marina','Lanza',650,'SSR');
INSERT INTO armas VALUES (3,'Espada Demoníaca','Espada',700,'SSR');
INSERT INTO armas VALUES (4,'Guante de Fuego','Guante',620,'SSR');

SELECT * FROM armas;

/*INSERTAR INVENTARIO*/
INSERT INTO inventario VALUES (1,1,1,50);
INSERT INTO inventario VALUES (2,2,2,60);
INSERT INTO inventario VALUES (3,3,3,65);
INSERT INTO inventario VALUES (4,4,4,58);

SELECT * FROM inventario;

/*JOIN*/ /*FROM empieza leyendo la tabla*/ /*JOIN ahora unimos la tabla*/
SELECT p.nombre , e.nombre_elemento  #Quiero mostrar el nombre del personaje y el nombre del elemento
FROM personajes p                    #Tabla personaje ahora se llama "p"
JOIN elementos e                     #Tabla elemento ahora se llama "e"
ON p.id_elemento = e.id_elemento;    #"ON" condición de unión

/*JOIN TRIPLE*/
SELECT p.nombre AS personaje,
       e.nombre_elemento,
       a.nombre AS arma

FROM personajes p

JOIN elementos e
ON p.id_elemento = e.id_elemento

JOIN inventario i
ON p.id_personaje = i.id_personaje

JOIN armas a
ON i.id_arma = a.id_arma;