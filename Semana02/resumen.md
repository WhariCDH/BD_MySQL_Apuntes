✅ Semana 2 — El poder del modelado (Base de Datos)

******************************************************************************************
⭐ 1. Principal causa de fracaso en sistemas de información

👉 No aplicar correctamente el modelado de base de datos.

Consecuencias:

❌ Se calcula mal el tiempo y recursos
❌ Bases de datos mal diseñadas
❌ Documentación pobre
❌ Sistemas difíciles de mantener

******************************************************************************************
⭐ 2. Modelo Entidad – Relación (ER)

Sirve para:

👉 Representar cómo se relacionan los datos de una base de datos.

Se representa con el DER (Diagrama Entidad Relación).

*****************************************************************************************
⭐ 3. Niveles del diseño de Base de Datos

🔵 Modelo Conceptual
Es la idea general
No depende del SGBD
Solo muestra entidades y relaciones

🟡 Modelo Lógico
Ya aparecen:
Atributos
PK (llave primaria)
FK (llave foránea)
Pero NO tipos de datos

🔴 Modelo Físico
Ya tiene tipos de datos
Se puede implementar en SQL

Ejemplo de comandos:

CREATE DATABASE
CREATE TABLE
CREATE INDEX

*********************************************************************************************
⭐ 4. Elementos del Modelo ER
📦 Entidad

Es algo sobre lo que guardamos información.

Ejemplos:

Cliente
Libro
Médico

Se representa con rectángulo

⚪ Atributo

Son las características de la entidad.

Ejemplo:

Nombre
DNI
Edad

Se representa con óvalo

🔗 Relación

Es la conexión entre entidades.

Ejemplo:

Cliente solicita Libro

******************************************************************************************
⭐ 5. Cardinalidad (MUY IMPORTANTE)

Indica cuántas entidades se relacionan.

Tipos:

✅ 1 : 1 → uno a uno
✅ 1 : N → uno a muchos
✅ N : M → muchos a muchos

👉 Esta última siempre genera tabla intermedia (recuerda semana 1).

******************************************************************************************
⭐ 6. Cómo construir un modelo conceptual (PASOS DE EXAMEN)

✅ Paso 1 → Identificar entidades
Leer el caso y buscar sustantivos importantes.

Ejemplo:

Cliente
Libro
Autor
Bibliotecario

✅ Paso 2 → Definir atributos
Qué datos tiene cada entidad.

Ejemplo Cliente:

Código
Nombre
Apellido

✅ Paso 3 → Identificar relaciones (VERBOS)

Ejemplo:

Cliente solicita Libro
Bibliotecario proporciona pedido
Libro pertenece a Autor

*******************************************************************************************
⭐ IDEA MÁS IMPORTANTE DE TODA LA SEMANA 2

👉 Antes de crear tablas debes:

1️⃣ Identificar entidades
2️⃣ Identificar atributos
3️⃣ Identificar relaciones
4️⃣ Identificar cardinalidad