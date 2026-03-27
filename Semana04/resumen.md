✅ Semana 4 — Normalización en Base de Datos

***********************************************************************************************
⭐ ¿Qué es Normalizar?

👉 Es el proceso de organizar las tablas correctamente para evitar errores y datos repetidos.

Sirve para:

✅ Evitar duplicidad
✅ Evitar errores al actualizar
✅ Evitar pérdida de datos
✅ Mejorar almacenamiento
✅ Facilitar consultas

***********************************************************************************************
⭐ Problema principal sin normalizar

Se producen ANOMALÍAS

🔴 Anomalía de Inserción

No puedes guardar algo sin guardar otra cosa.

Ejemplo:
No puedes guardar curso si no existe alumno.

🔴 Anomalía de Eliminación

Al borrar algo → pierdes información importante.

Ejemplo:
Borras matrícula → pierdes datos del curso.

🔴 Anomalía de Actualización

Debes cambiar el mismo dato muchas veces.

Ejemplo:
Cambiar nombre del curso en varias filas.

**********************************************************************************************
⭐ Relación NO normalizada

Tiene:

❌ Datos repetidos
❌ Grupos repetitivos

Ejemplo:

Un alumno con muchos cursos en la misma fila.

*********************************************************************************************
✅ Primera Forma Normal (1FN)
📌 Regla

👉 Los campos deben ser atómicos (simples)
👉 No deben existir grupos repetitivos

🔥 Solución

Separar en tablas.

Ejemplo:

ANTES:

Alumno + Cursos juntos

DESPUÉS:

Tabla Alumno
Tabla Matrícula

********************************************************************************************
✅ Segunda Forma Normal (2FN)
📌 Regla

👉 Debe estar en 1FN
👉 Eliminar dependencias parciales

⭐ ¿Qué es dependencia parcial?

Cuando un atributo depende solo de parte de la clave

Ejemplo:

PK = (Alumno + Curso)

Pero:

NombreCurso depende solo de Curso

Entonces se separa:

Tabla Curso
Tabla Matrícula

*********************************************************************************************
✅ Tercera Forma Normal (3FN)
📌 Regla

👉 Debe estar en 2FN
👉 Eliminar dependencias transitivas

⭐ Dependencia transitiva

Cuando:

A → B → C

Ejemplo:

Curso → Docente
Docente → Oficina

Entonces:

Curso NO debe tener Oficina.

Se crea tabla:

Docente

*********************************************************************************************
⭐ Formas más avanzadas (profe solo quiere concepto)
✅ BCNF

Cuando hay varias claves candidatas

✅ 4FN

Cuando hay dependencias multivaluadas

Ejemplo:

Computadora tiene muchos programas
Computadora se vende en muchas tiendas
✅ 5FN

Cuando hay dependencias de unión

Muy raro en la práctica.

********************************************************************************************
⭐ IDEA MÁS IMPORTANTE DE TODA LA SEMANA 4

👉 Normalizar = Separar tablas correctamente para evitar datos repetidos y errores.

********************************************************************************************
🔥 RESUMEN ULTRA CORTO PARA MEMORIZAR
1FN → quitar grupos repetidos
2FN → quitar dependencias parciales
3FN → quitar dependencias transitivas
BCNF → varias claves
4FN → dependencias multivaluadas
5FN → dependencias de unión
