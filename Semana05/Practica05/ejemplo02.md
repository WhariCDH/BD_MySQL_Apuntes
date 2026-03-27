Perfecto 💪📚 ahora sí vamos a hacer EJERCICIO COMPLETO (Semana 4 + Semana 5)
👉 Normalización + Desnormalización (tipo examen real).

Quiero que lo entiendas, no solo copiar.

✅ EJERCICIO

Una empresa guarda esta tabla:

VENTAS
-------------------------------------------------------
IDVenta | NombreCliente | Direccion | Producto | Precio | Cantidad
-------------------------------------------------------
1       | Juan Perez    | Lima      | TV       | 2000   | 2
2       | Juan Perez    | Lima      | Radio    | 300    | 1
3       | Ana Torres    | Callao    | TV       | 2000   | 1

**********************************************************************************************
⭐ PARTE 1 → Detectar problema

¿Qué ves?

❌ Cliente repetido
❌ Dirección repetida
❌ Producto repetido
❌ Precio repetido

👉 Esto NO está normalizado.

**********************************************************************************************
✅ PARTE 2 → Normalizar (llevar a 3FN)
📦 Tabla CLIENTE

CLIENTE
---------
IDCliente (PK)
NombreCliente
Direccion

📦 Tabla PRODUCTO
PRODUCTO
---------
IDProducto (PK)
NombreProducto
Precio

📦 Tabla VENTA
VENTA
---------
IDVenta (PK)
IDCliente (FK)
IDProducto (FK)
Cantidad

⭐ ¿Qué logramos?

✅ Ya no hay duplicidad
✅ Si cambia dirección → se cambia UNA vez
✅ Si cambia precio → UNA vez

👉 Esto es NORMALIZAR.

****************************************************************************************************************
✅ PARTE 3 → Ahora DESNORMALIZAR

Supongamos:

👉 El gerente quiere reportes rápidos.

Entonces podemos crear:

VENTA_REPORTE
--------------
IDVenta
NombreCliente
Direccion
NombreProducto
Precio
Cantidad

⭐ Aquí volvimos a duplicar datos → pero consultas serán rápidas