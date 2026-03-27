Ejercicio — Sistema de Ventas

Se tiene la siguiente tabla:

📋 VENTAS
ID Venta	NombreCliente	Dirección	Producto	Precio	Cantidad	Fecha
1	        Juan Pérez	    Lima	    Laptop	    3000	1	        10/04/2026
2	        Juan Pérez	    Lima	    Mouse	    50	    2	        10/04/2026
3	        María López	    Arequipa	Laptop	    3000	1	        11/04/2026

❓ Preguntas

1️⃣ ¿La tabla está normalizada?
2️⃣ Llevar la tabla a 1FN
3️⃣ Llevar la tabla a 2FN
4️⃣ Llevar la tabla a 3FN
5️⃣ Crear un ejemplo de desnormalización

✅ SOLUCIÓN
⭐ 1. ¿Está normalizada?

❌ NO

Porque hay datos repetidos:

NombreCliente
Dirección
Producto
Precio

Ejemplo:

Juan Pérez aparece varias veces.

************************************************************************
⭐ 2. Primera Forma Normal (1FN)

Regla:

👉 No debe haber grupos repetitivos.

La tabla ya tiene datos atómicos, así que queda igual.

************************************************************************
⭐ 3. Segunda Forma Normal (2FN)

El problema es que:

Dirección depende del cliente
Precio depende del producto

Entonces se separa.

📦 CLIENTES
IDCliente	Nombre	      Dirección
1	        Juan Pérez	  Lima
2	        María López   Arequi

📦 PRODUCTOS
IDProducto	NombreProducto	Precio
1	        Laptop      	3000
2	        Mouse	        50

📦 VENTAS
IDVenta	IDCliente	Fecha
1	    1	        10/04/2026
2	    1	        10/04/2026
3	    2	        11/04/2026

📦 DETALLE_VENTA
IDVenta	IDProducto	Cantidad
1	    1	        1
2	    2	        2
3	    1	        1

**********************************************************************************************
⭐ 4. Tercera Forma Normal (3FN)

Ya está en 3FN porque:

✔ No hay dependencias transitivas
✔ Cada atributo depende de su PK

**********************************************************************************************
⭐ 5. Desnormalización

Para reportes rápidos se puede crear:

📦 VENTAS_REPORTE
IDVenta	Cliente	    Producto	Precio	Cantidad	Fecha
1	    Juan Pérez	Laptop	    3000	1	        10/04/2026
2	    Juan Pérez	Mouse	    50	    2	        10/04/2026
3	    María López	Laptop	    3000	1	        11/04/2026

👉 Aquí hay duplicidad pero consultas más rápidas.

***********************************************************************************************
🧠 Lo que el profesor quiere que aprendas

1️⃣ Identificar datos repetidos
2️⃣ Separar en tablas correctas
3️⃣ Crear tabla intermedia (detalle)
4️⃣ Saber cuándo desnormalizar