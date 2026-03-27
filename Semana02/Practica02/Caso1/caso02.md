✅ Caso 2 — Construyendo Modelo Conceptual

*******************************************************************
⭐ Paso 1: Identificar ENTIDADES

Leemos el caso y buscamos sustantivos importantes:

👉 Personas que registran
👉 Personas que compran
👉 Pedido
👉 Producto

Entonces las entidades son:

✅ Empleado (el que registra)
✅ Cliente (el que compra)
✅ Producto
✅ Pedido

*******************************************************************
⭐ Paso 2: Definir ATRIBUTOS

📦 Entidad: Empleado
-CodigoEmpleado
-Nombre
-Apellido
Ejemplos:
-Alberto Moreno
-Francisco Mazza

📦 Entidad: Cliente
-CodigoCliente
-Nombre
-Apellido
Ejemplos:
-Alfredo Jiménez
-Juan Quispe

📦 Entidad: Producto
-CodigoProducto
-NombreProducto
Ejemplos:
-Televisor
-Radio

📦 Entidad: Pedido
-CodigoPedido
-Cantidad
Ejemplos:
-30 unidades
-10 unidades

**************************************************************************
⭐ Paso 3: Identificar RELACIONES (VERBOS)

Del caso salen estos verbos:

👉 Empleado registra Pedido
👉 Cliente realiza Pedido
👉 Pedido incluye Producto


⭐ Cardinalidades (MUY IMPORTANTE)

✔ Un empleado puede registrar muchos pedidos → 1 : N

✔ Un cliente puede realizar muchos pedidos → 1 : N

✔ Un pedido incluye un producto → N : 1

(Según el caso solo menciona un producto por pedido)



✅ DER Conceptual (dibujado simple)
EMPLEADO 1 -------- N PEDIDO N -------- 1 CLIENTE

PEDIDO N -------- 1 PRODUCTO


⭐ Cómo pensar rápido este ejercicio (TRUCO PRO)

Cuando veas:

👉 “registra pedido” → el pedido es entidad
👉 “cantidad” → casi siempre atributo del pedido
👉 “unidades de producto” → relación Pedido ↔ Producto