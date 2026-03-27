✅ Caso 4 — Construyendo Modelo Conceptual

**************************************************************************
⭐ Paso 1: Identificar ENTIDADES

Buscando sustantivos importantes:

👉 Empleado
👉 Cliente
👉 Pedido
👉 Producto

Entonces las entidades son:

✅ Empleado
✅ Cliente
✅ Pedido
✅ Producto

***************************************************************************
⭐ Paso 2: Definir ATRIBUTOS

📦 Entidad: Empleado
-CodigoEmpleado
-Nombre
-Apellido
Ejemplos:
-Alberto Moreno
-Andrés Salazar
-Larissa Moreno

📦 Entidad: Cliente
-CodigoCliente
-Nombre
-Apellido
Ejemplos:
-Alfredo Jiménez
-Alberto Picasso
-Sofía Salazar

📦 Entidad: Pedido
-CodigoPedido
-Cantidad
Ejemplos:
-30
-5
-20

📦 Entidad: Producto
-CodigoProducto
-NombreProducto
Ejemplos:
-Televisor
-Monitor
-Impresora

***************************************************************************************
⭐ Paso 3: Identificar RELACIONES (VERBOS)

Del caso salen:

👉 Empleado registra Pedido
👉 Empleado atiende Cliente
👉 Cliente realiza Pedido
👉 Pedido incluye Producto

⭐ Cardinalidad (CLAVEEE)

✔ Un empleado puede registrar muchos pedidos → 1 : N

✔ Un cliente puede realizar muchos pedidos → 1 : N

✔ Un pedido incluye un producto → N : 1
(en este caso básico)

✔ Un empleado puede atender muchos clientes → 1 : N


✅ DER Conceptual (dibujado simple tipo examen)
EMPLEADO 1 -------- N PEDIDO N -------- 1 CLIENTE

PEDIDO N -------- 1 PRODUCTO

EMPLEADO 1 -------- N CLIENTE
           atiende

********************************************************************************************
⭐ DETALLE MUY IMPORTANTE (profe ama esto)

Aunque dice:

👉 “atiende y registra pedido”

NO se crea entidad nueva.

Son dos relaciones distintas del EMPLEADO:

atiende cliente
registra pedido