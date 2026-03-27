/******************************************************/
/*🎮 EJERCICIO: CREAR → USAR → BORRAR → VOLVER A CREAR*/
/******************************************************/

/*✅ 1️⃣ CREAR BASE DE DATOS*/
CREATE DATABASE prueba_rpg;
USE prueba_rpg;

/*✅ 2️⃣ CREAR TABLA*/
CREATE TABLE heroes(
id_heroe INT PRIMARY KEY,
nombre VARCHAR(50),
nivel INT
);

/*✅ 3️⃣ INSERTAR DATOS (PRUEBA)*/
INSERT INTO heroes VALUES (1,'Knight',50);
INSERT INTO heroes VALUES (2, 'Marina', 60);

SELECT * FROM heroes;

/*✅ 3️⃣ INSERTAR DATOS (PRUEBA)*/
ALTER TABLE heroes 
ADD ataque INT;

#ahora se puede alterar

UPDATE heroes SET ataque = 800 WHERE id_heroe = 1;
UPDATE heroes SET ataque = 1200 WHERE id_heroe = 2;

/*✅ 5️⃣ OPCIÓN B → BORRAR SOLO DATOS (RESET SUAVE)*/
DELETE FROM heroes;

#⭐ RESET PRO

TRUNCATE TABLE heroes;

#Reinicia todo y reinicia contador 

/*✅ 6️⃣ OPCIÓN C → DESTRUIR TABLA (RESET FUERTE)*/
DROP TABLE heroes;

#ahora 

SELECT * FROM heroes;

#💥 ERROR → porque ya no existe

/*✅ 7️⃣ VOLVER A CREAR (MODELADO NUEVO)*/

CREATE TABLE heroes(
id_heroe INT PRIMARY KEY,
nombre VARCHAR(50),
nivel INT,
ataque INT,
defensa INT
);

#🔥 RESET TOTAL (GOD MODE)
DROP DATABASE prueba_rpg;

#luego
CREATE DATABASE prueba_rpg;
USE prueba_rpg;




