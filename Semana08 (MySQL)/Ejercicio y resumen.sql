/*🧠 SEMANA 8 — CONSULTAS SQL (WHERE y CLAÚSULAS)*/

/*
Ahora aprenderás a:

✅ filtrar datos
✅ ordenar
✅ buscar patrones
✅ hacer condiciones
✅ crear vista
*/

/*⭐ 1️⃣ WHERE (FILTRAR DATOS)*/
/*Sirve para traer solo lo que necesitas.*/

SELECT * FROM personajes
WHERE nivel > 60;

#Solo personajes nivel alto.


/*⭐ 2️⃣ OPERADORES LÓGICOS*/
#🔥 AND
#Ambas condiciones deben cumplirse.

SELECT * FROM personajes
WHERE nivel > 50 AND rareza = 'SSR';

#🔥 OR
#Una condición o la otra.

SELECT * FROM personajes
WHERE elemento = 'Fuego' OR elemento = 'Agua';

#🔥 NOT
#Negar condición.

SELECT * FROM personajes
WHERE NOT rareza = 'SR';

/*⭐ 3️⃣ DISTINCT (NO REPETIDOS)*/
SELECT DISTINCT rareza
FROM personajes;

/*
👉 muestra solo:

SSR
SR
R
*/

/*⭐ 4️⃣ ORDER BY (ORDENAR)*/
#De mayor nivel a menor 
SELECT * FROM personajes
ORDER BY nivel DESC;

/*⭐ 5️⃣ TOP / LIMIT (TRAER SOLO ALGUNOS)*/
#Trae registro de la cantidad que llames 
SELECT * FROM personajes
LIMIT 3;

/*⭐ 6️⃣ IN (VARIOS VALORES)*/
SELECT * FROM personajes
WHERE id_elemento IN (3 , 4);

/*⭐ 7️⃣ BETWEEN (RANGO)*/
#Filtro doble
SELECT * FROM personajes
WHERE nivel BETWEEN 50 AND 60;

/*⭐ 8️⃣ LIKE (BUSCAR TEXTO)*/
#Filtra la primera letra
SELECT * FROM personajes
WHERE nombre LIKE 'M%';

/*⭐ 9️⃣ IS NULL*/
#Busca campos vacios
SELECT * FROM personajes
WHERE arma IS NULL;

/*⭐ 🔟 CASE (CONDICIONES TIPO IF)*/
SELECT nombre,
CASE
WHEN nivel >= 60 THEN 'Pro'
WHEN nivel >= 50 THEN 'Intermedio'
ELSE 'Novato'
END AS rango
FROM personajes;

/*⭐ 1️⃣1️⃣ VISTAS (VIEWS)*/
#Son consultas guardadas.

CREATE VIEW personajes_fuertes AS
SELECT nombre, nivel
FROM personajes
WHERE nivel > 60;

#Luego:

SELECT * FROM personajes_fuertes;