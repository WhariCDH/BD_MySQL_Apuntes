✅ Semana 5 — Desnormalización en Base de Datos

********************************************************************************
⭐ ¿Qué es Desnormalizar?

👉 Es el proceso de volver a juntar o duplicar datos en tablas
para que las consultas sean más rápidas.

Es lo contrario de normalizar.

**********************************************************************************
⭐ ¿Para qué sirve?

Principalmente para:

✅ Mejorar rendimiento
✅ Consultas más rápidas
✅ Reducir JOIN entre tablas

👉 Se usa cuando el sistema tiene muchas consultas grandes.

************************************************************************************
⭐ Ejemplo SIMPLE

🔵 Base NORMALIZADA

Tablas:

Cliente
Producto
Venta

La tabla venta solo tiene:

IDCliente
IDProducto

Entonces para ver el reporte necesitas:

👉 JOIN Cliente
👉 JOIN Producto

Esto puede ser lento.

**************************************************************************************
🔴 Base DESNORMALIZADA

La tabla venta también guarda:

NombreCliente
Dirección
NombreProducto
Precio

Entonces:

⭐ Ya NO necesitas JOIN → consulta más rápida.

**************************************************************************************
⭐ Ventajas de la Desnormalización

✅ Mejora rendimiento
✅ Mayor velocidad de consultas
✅ Menos complejidad en consultas

**************************************************************************************
⭐ Desventajas (MUY EXAMEN)

❌ Aumenta redundancia
❌ Puede haber inconsistencias
❌ Usa más espacio

Ejemplo:

Si cambias dirección del cliente →
debes cambiarla en MUCHAS filas.

*************************************************************************************
⭐ Cuándo usar desnormalización

👉 Cuando:

El sistema tiene muchos reportes
Se consulta más de lo que se actualiza
El rendimiento es crítico

*************************************************************************************
⭐ Idea MUY IMPORTANTE (Profe ama esto)

En sistemas reales:

✅ Se mantiene la BD NORMALIZADA
✅ Se crean tablas DESNORMALIZADAS auxiliares para reportes

************************************************************************************
🔥 RESUMEN ULTRA CORTO PARA MEMORIZAR

Normalizar → quitar duplicidad
Desnormalizar → duplicar para rapidez
Mejora consultas
Aumenta redundancia
Se usa para reportes