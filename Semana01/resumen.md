✅ Semana 1 — Base de Datos (Resumen CLAVE)
*********************************************************************** 
📌 1. Ciclo de vida de una Base de Datos

Una base de datos se crea dentro del ciclo de desarrollo de software:

1️⃣ Diseño
2️⃣ Desarrollo
3️⃣ Pruebas
4️⃣ Implantación

👉 La base de datos se piensa y diseña antes de programar.

**********************************************************************
📌 2. Diseño de una Base de Datos (3 niveles)
🔹 Modelo Conceptual
Es la idea general
No depende del sistema gestor (SGBD)
Se identifican entidades y relaciones
🔹 Modelo Lógico
Se organiza la información en tablas
Ya tiene estructura más técnica
🔹 Modelo Físico
Se implementa en un SGBD real (ej: MySQL, SQL Server, etc.)

**********************************************************************
📌 3. Diagrama Entidad Relación (DER)
Sirve para representar gráficamente la base de datos.

Se compone de:

✅ Entidades → cosas importantes (Cliente, Factura, Producto)
✅ Relaciones → cómo se conectan
✅ Atributos → datos de cada entidad

Ejemplo:
👉 Un edificio tiene muchos apartamentos
👉 Un apartamento pertenece a un solo edificio

*********************************************************************
📌 4. Análisis del Caso (Muy IMPORTANTE)

Antes de hacer la base de datos debes:

✔ Entender el proceso del negocio
✔ Identificar qué actividades serán manuales y cuáles en sistema
✔ Identificar documentos (factura, guía, etc.)
✔ Convertir esos documentos en entidades

********************************************************************
📌 5. Caso práctico: Automatización de ventas

El sistema SOLO automatiza:

✅ Generación de Guía de Remisión
✅ Generación de Factura

No automatiza:

❌ Selección de productos
❌ Pago
❌ Entrega

********************************************************************
📌 6. Concepto MUY IMPORTANTE: Cabecera y Detalle

Documentos como factura o guía tienen:

🔹 Cabecera (una vez)

Ejemplo:

Código factura
Fecha
Cliente

🔹 Detalle (muchas veces)

Ejemplo:

Producto
Cantidad
Precio

👉 Relación clave:

1 Cabecera → muchos Detalles

******************************************************************
📌 7. Diseño de la solución

Pasos:

1️⃣ Hacer diagrama de flujo del proceso
2️⃣ Hacer DER (entidades y relaciones)
3️⃣ Diseñar tablas
4️⃣ Definir atributos (campos)

⭐ IDEA MÁS IMPORTANTE DE TODA LA SEMANA

👉 Una base de datos se diseña entendiendo primero el negocio y sus documentos
👉 Luego esos documentos se convierten en entidades y tablas